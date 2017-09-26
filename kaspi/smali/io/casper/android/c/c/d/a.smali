.class public Lio/casper/android/c/c/d/a;
.super Ljava/lang/Object;
.source "FileResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileResponseParser"


# instance fields
.field private mDownloadProgressListener:Lio/casper/android/c/c/c/a;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/casper/android/c/c/d/a;-><init>(Ljava/io/File;Lio/casper/android/c/c/c/a;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/casper/android/c/c/c/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/casper/android/c/c/d/a;->mFile:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lio/casper/android/c/c/d/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 35
    const/4 v2, 0x0

    .line 39
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/casper/android/c/c/d/a;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    const/16 v6, 0x400

    :try_start_1
    new-array v6, v6, [B

    .line 45
    :goto_0
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 46
    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 47
    iget-object v8, p0, Lio/casper/android/c/c/d/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    if-eqz v8, :cond_0

    .line 48
    iget-object v8, p0, Lio/casper/android/c/c/d/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v2

    div-long/2addr v10, v4

    invoke-interface {v8, v10, v11}, Lio/casper/android/c/c/c/a;->a(J)V

    .line 50
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :goto_1
    :try_start_2
    const-string v2, "FileResponseParser"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Parsing Response to File failed with Exception"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    .line 53
    :cond_1
    :try_start_3
    iget-object v0, p0, Lio/casper/android/c/c/d/a;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 54
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 55
    :cond_2
    iget-object v0, p0, Lio/casper/android/c/c/d/a;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    const-string v0, "FileResponseParser"

    iget-object v2, p0, Lio/casper/android/c/c/d/a;->mFile:Ljava/io/File;

    invoke-static {v0, v2}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 58
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 66
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 61
    :cond_4
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 66
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 63
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public synthetic b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lio/casper/android/c/c/d/a;->a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
