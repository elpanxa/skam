.class public Lcom/revmob/android/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# static fields
.field private static final CACHE_DIR:Ljava/lang/String; = "RevMob"


# instance fields
.field private cacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "RevMob"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 43
    .line 45
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 47
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 48
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 54
    :goto_1
    return-void

    .line 50
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public write(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    invoke-static {p2, v0}, Lcom/revmob/android/FileCache;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    goto :goto_0
.end method
