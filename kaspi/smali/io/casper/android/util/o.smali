.class public final Lio/casper/android/util/o;
.super Ljava/lang/Object;
.source "ZippedAssetReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/util/o$a;
    }
.end annotation


# instance fields
.field private mAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/casper/android/util/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuffer:[B

.field private mBufferUsed:I

.field private final mContext:Landroid/content/Context;

.field public mIsUnzipped:Z

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lio/casper/android/util/o;->mIsUnzipped:Z

    .line 21
    iput v0, p0, Lio/casper/android/util/o;->mBufferUsed:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/util/o;->mAssets:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lio/casper/android/util/o;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lio/casper/android/util/o;->mPath:Ljava/lang/String;

    .line 25
    new-array v0, p3, [B

    iput-object v0, p0, Lio/casper/android/util/o;->mBuffer:[B

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/util/o;->b()V

    .line 33
    iget-object v0, p0, Lio/casper/android/util/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/util/o;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 37
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/util/o;->mIsUnzipped:Z

    .line 66
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    .line 67
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 78
    :goto_1
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 48
    iget v3, p0, Lio/casper/android/util/o;->mBufferUsed:I

    .line 49
    const/4 v4, 0x0

    .line 52
    :goto_2
    iget-object v0, p0, Lio/casper/android/util/o;->mBuffer:[B

    iget v1, p0, Lio/casper/android/util/o;->mBufferUsed:I

    iget-object v2, p0, Lio/casper/android/util/o;->mBuffer:[B

    array-length v2, v2

    iget v5, p0, Lio/casper/android/util/o;->mBufferUsed:I

    sub-int/2addr v2, v5

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    .line 53
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v9, p0, Lio/casper/android/util/o;->mAssets:Ljava/util/Map;

    new-instance v0, Lio/casper/android/util/o$a;

    iget-object v2, p0, Lio/casper/android/util/o;->mBuffer:[B

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/casper/android/util/o$a;-><init>(Lio/casper/android/util/o;[BIILio/casper/android/util/o$1;)V

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 56
    :cond_1
    :try_start_3
    iget v1, p0, Lio/casper/android/util/o;->mBufferUsed:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/casper/android/util/o;->mBufferUsed:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    add-int/2addr v4, v0

    .line 58
    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/casper/android/util/o;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lio/casper/android/util/o$a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/casper/android/util/o;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/util/o$a;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lio/casper/android/util/o;->mIsUnzipped:Z

    .line 82
    iput v0, p0, Lio/casper/android/util/o;->mBufferUsed:I

    .line 83
    iget-object v0, p0, Lio/casper/android/util/o;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    return-void
.end method
