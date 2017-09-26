.class public Lio/casper/android/n/a/a/b;
.super Ljava/lang/Object;
.source "LiveStoryThumbnailResponseParser.java"

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
.field private static final TAG:Ljava/lang/String; = "LiveStoryThumbnailResponseParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadProgressListener:Lio/casper/android/c/c/c/a;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/n/a/a/b;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/c/c/c/a;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/c/c/c/a;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/casper/android/n/a/a/b;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lio/casper/android/n/a/a/b;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 38
    iput-object p3, p0, Lio/casper/android/n/a/a/b;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    .line 40
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/n/a/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v2}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v9

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/b;->mInternalCacheManager:Lio/casper/android/l/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/b;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v2

    .line 53
    const/4 v4, 0x0

    .line 54
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    const/4 v3, 0x0

    .line 61
    const-wide/16 v6, 0x0

    .line 62
    const/16 v5, 0x400

    :try_start_0
    new-array v5, v5, [B

    .line 64
    :goto_0
    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 65
    int-to-long v14, v13

    add-long/2addr v6, v14

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/casper/android/n/a/a/b;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    if-eqz v14, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/casper/android/n/a/a/b;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    const-wide/16 v16, 0x64

    mul-long v16, v16, v6

    div-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1}, Lio/casper/android/c/c/c/a;->a(J)V

    .line 69
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    :goto_1
    :try_start_1
    const-string v5, "LiveStoryThumbnailResponseParser"

    const-string v6, "Parsing LiveStoryThumbnailResponse failed with Exception"

    invoke-static {v5, v6, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 91
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 92
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const-string v2, "LiveStoryThumbnailResponseParser"

    invoke-static {v2, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 100
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    :goto_2
    return-object v2

    .line 72
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 73
    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-eqz v5, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-lez v5, :cond_5

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 74
    :cond_4
    const-string v2, "LiveStoryThumbnailResponseParser"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Failed to write entire Response Stream to Temporary File"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 89
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 91
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 92
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    const-string v3, "LiveStoryThumbnailResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 78
    :cond_5
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :try_start_5
    invoke-static {v5, v4}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 83
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 89
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 91
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 92
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    const-string v3, "LiveStoryThumbnailResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 89
    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 90
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 91
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 92
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_6

    .line 95
    const-string v3, "LiveStoryThumbnailResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    throw v2

    .line 89
    :catchall_1
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    .line 85
    :catch_1
    move-exception v2

    move-object v4, v5

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1
.end method

.method public synthetic b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lio/casper/android/n/a/a/b;->a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
