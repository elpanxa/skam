.class public Lio/casper/android/n/a/a/a;
.super Ljava/lang/Object;
.source "AuthStoryBlobResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<",
        "Lio/casper/android/n/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthStoryBlobResponseParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadProgressListener:Lio/casper/android/c/c/c/a;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mStory:Lio/casper/android/n/a/c/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/n/a/a/a;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/c/c/c/a;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;Lio/casper/android/c/c/c/a;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/casper/android/n/a/a/a;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    .line 43
    iput-object p3, p0, Lio/casper/android/n/a/a/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    .line 45
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/n/a/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Lio/casper/android/n/a/a/a/b;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v10

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v2}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v11

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v14

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/a;->mInternalCacheManager:Lio/casper/android/l/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->c(Lio/casper/android/n/a/c/b/x;)Ljava/io/File;

    move-result-object v15

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v5, 0x0

    .line 65
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 68
    const-wide/16 v8, 0x0

    .line 69
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    .line 71
    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 72
    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 73
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/casper/android/n/a/a/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    if-eqz v6, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/casper/android/n/a/a/a;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    const-wide/16 v16, 0x64

    mul-long v16, v16, v8

    div-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-interface {v6, v0, v1}, Lio/casper/android/c/c/c/a;->a(J)V

    .line 76
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v7, v2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    move-object v4, v3

    move-object v3, v5

    move-object v5, v7

    .line 156
    :goto_1
    :try_start_2
    const-string v6, "AuthStoryBlobResponseParser"

    const-string v7, "Parsing AuthStoryBlobResponse failed with Exception"

    invoke-static {v6, v7, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const-string v2, "AuthStoryBlobResponseParser"

    invoke-static {v2, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 170
    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    return-object v2

    .line 79
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 80
    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v2, v12, v16

    if-lez v2, :cond_5

    cmp-long v2, v8, v12

    if-eqz v2, :cond_5

    .line 81
    :cond_4
    const-string v2, "AuthStoryBlobResponseParser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "Failed to write entire Response Stream to Temporary File"

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 82
    const/4 v2, 0x0

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 85
    :cond_5
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v4}, Lio/casper/android/n/a/c/b/x;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/x;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lio/casper/android/n/e/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/CipherInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v6

    .line 86
    if-nez v6, :cond_6

    .line 87
    const/4 v2, 0x0

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 90
    :cond_6
    :try_start_5
    new-instance v2, Lio/casper/android/n/a/a/a/b;

    invoke-direct {v2}, Lio/casper/android/n/a/a/a/b;-><init>()V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/a;->mStory:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/x;->m()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 94
    new-instance v8, Ljava/util/zip/ZipInputStream;

    invoke-direct {v8, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 98
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 100
    :goto_3
    if-eqz v3, :cond_9

    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 105
    const-string v9, "media"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v9

    if-eqz v9, :cond_8

    .line 107
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 108
    :try_start_8
    invoke-static {v8, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 109
    invoke-virtual {v2, v14}, Lio/casper/android/n/a/a/a/b;->a(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 114
    :try_start_9
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    :cond_7
    :goto_4
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v3

    goto :goto_3

    .line 110
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 111
    :goto_5
    :try_start_a
    const-string v4, "AuthStoryBlobResponseParser"

    const-string v9, "Extracting Media File from Zip failed with Exception"

    invoke-static {v4, v9, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 112
    const/4 v2, 0x0

    .line 114
    :try_start_b
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 139
    :try_start_c
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 114
    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_6
    :try_start_d
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 135
    :catch_2
    move-exception v2

    .line 136
    :try_start_e
    const-string v3, "AuthStoryBlobResponseParser"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v12, "Extracting Files from Zip failed with Exception"

    aput-object v12, v4, v9

    const/4 v9, 0x1

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 137
    const/4 v2, 0x0

    .line 139
    :try_start_f
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 118
    :cond_8
    :try_start_10
    const-string v9, "overlay"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    :try_start_11
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 121
    :try_start_12
    invoke-static {v8, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 122
    invoke-virtual {v2, v15}, Lio/casper/android/n/a/a/a/b;->b(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 127
    :try_start_13
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_4

    .line 139
    :catchall_1
    move-exception v2

    :try_start_14
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 155
    :catch_3
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_1

    .line 123
    :catch_4
    move-exception v2

    .line 124
    :goto_7
    :try_start_15
    const-string v3, "AuthStoryBlobResponseParser"

    const-string v9, "Extracting Overlay File from Zip failed with Exception"

    invoke-static {v3, v9, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 125
    const/4 v2, 0x0

    .line 127
    :try_start_16
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 139
    :try_start_17
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 127
    :catchall_2
    move-exception v2

    :goto_8
    :try_start_18
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 139
    :cond_9
    :try_start_19
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 146
    :cond_a
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 147
    :try_start_1b
    invoke-static {v6, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 149
    invoke-virtual {v2, v14}, Lio/casper/android/n/a/a/a/b;->a(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 159
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 159
    :catchall_3
    move-exception v2

    move-object v7, v4

    :goto_9
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 161
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 162
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_b

    .line 165
    const-string v3, "AuthStoryBlobResponseParser"

    invoke-static {v3, v11}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_b
    throw v2

    .line 159
    :catchall_4
    move-exception v2

    goto :goto_9

    :catchall_5
    move-exception v2

    move-object v3, v6

    goto :goto_9

    :catchall_6
    move-exception v2

    move-object v5, v3

    move-object v3, v6

    goto :goto_9

    :catchall_7
    move-exception v2

    move-object v7, v5

    move-object v5, v3

    move-object v3, v4

    goto :goto_9

    .line 155
    :catch_5
    move-exception v2

    move-object/from16 v18, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :catch_6
    move-exception v2

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_1

    .line 127
    :catchall_8
    move-exception v2

    move-object v4, v3

    goto :goto_8

    .line 123
    :catch_7
    move-exception v2

    move-object v4, v3

    goto/16 :goto_7

    .line 114
    :catchall_9
    move-exception v2

    goto/16 :goto_6

    .line 110
    :catch_8
    move-exception v2

    goto/16 :goto_5
.end method

.method public synthetic b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lio/casper/android/n/a/a/a;->a(Lcom/squareup/okhttp/ResponseBody;)Lio/casper/android/n/a/a/a/b;

    move-result-object v0

    return-object v0
.end method
