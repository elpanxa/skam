.class public Lio/casper/android/n/a/a/c;
.super Ljava/lang/Object;
.source "SnapBlobResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<",
        "Lio/casper/android/n/a/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapBlobResponseParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadProgressListener:Lio/casper/android/c/c/c/a;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mSnap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/casper/android/n/a/a/c;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;Lio/casper/android/c/c/c/a;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/w;Lio/casper/android/c/c/c/a;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/casper/android/n/a/a/c;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lio/casper/android/n/a/a/c;->mSnap:Lio/casper/android/n/a/c/b/w;

    .line 41
    iput-object p3, p0, Lio/casper/android/n/a/a/c;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    .line 43
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/n/a/a/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Lio/casper/android/n/a/a/a/a;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v2}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v9

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/c;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->a(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v12

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/casper/android/n/a/a/c;->mInternalCacheManager:Lio/casper/android/l/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/c;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->b(Lio/casper/android/n/a/c/b/w;)Ljava/io/File;

    move-result-object v13

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v5, 0x0

    .line 63
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 66
    const-wide/16 v2, 0x0

    .line 67
    const/16 v7, 0x400

    :try_start_1
    new-array v7, v7, [B

    .line 69
    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 70
    int-to-long v0, v14

    move-wide/from16 v16, v0

    add-long v2, v2, v16

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/casper/android/n/a/a/c;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    if-eqz v15, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/casper/android/n/a/a/c;->mDownloadProgressListener:Lio/casper/android/c/c/c/a;

    const-wide/16 v16, 0x64

    mul-long v16, v16, v2

    div-long v16, v16, v10

    invoke-interface/range {v15 .. v17}, Lio/casper/android/c/c/c/a;->a(J)V

    .line 74
    :cond_0
    const/4 v15, 0x0

    invoke-virtual {v6, v7, v15, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    move-object v3, v5

    move-object v5, v4

    move-object v4, v6

    .line 151
    :goto_1
    :try_start_2
    const-string v6, "SnapBlobResponseParser"

    const-string v7, "Parsing SnapBlobResponse failed with Exception"

    invoke-static {v6, v7, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    const-string v2, "SnapBlobResponseParser"

    invoke-static {v2, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 165
    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    return-object v2

    .line 77
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 78
    const-wide/16 v14, 0x0

    cmp-long v7, v2, v14

    if-eqz v7, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_5

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    .line 79
    :cond_4
    const-string v2, "SnapBlobResponseParser"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v10, "Failed to write entire Response Stream to Temporary File"

    aput-object v10, v3, v7

    invoke-static {v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 80
    const/4 v2, 0x0

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 83
    :cond_5
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 85
    :try_start_5
    new-instance v2, Lio/casper/android/n/a/a/a/a;

    invoke-direct {v2}, Lio/casper/android/n/a/a/a/a;-><init>()V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/casper/android/n/a/a/c;->mSnap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/w;->r()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 89
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 93
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 95
    :goto_3
    if-eqz v3, :cond_8

    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v11, "media"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v11

    if-eqz v11, :cond_7

    .line 102
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 103
    :try_start_8
    invoke-static {v10, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 104
    invoke-virtual {v2, v12}, Lio/casper/android/n/a/a/a/a;->a(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 109
    :try_start_9
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 126
    :cond_6
    :goto_4
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v3

    goto :goto_3

    .line 105
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 106
    :goto_5
    :try_start_a
    const-string v4, "SnapBlobResponseParser"

    const-string v11, "Extracting Media File from Zip failed with Exception"

    invoke-static {v4, v11, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 107
    const/4 v2, 0x0

    .line 109
    :try_start_b
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 134
    :try_start_c
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 109
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

    .line 130
    :catch_2
    move-exception v2

    .line 131
    :try_start_e
    const-string v3, "SnapBlobResponseParser"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "Extracting Files from Zip failed with Exception"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    aput-object v2, v4, v11

    invoke-static {v3, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 132
    const/4 v2, 0x0

    .line 134
    :try_start_f
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 113
    :cond_7
    :try_start_10
    const-string v11, "overlay"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    :try_start_11
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 116
    :try_start_12
    invoke-static {v10, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 117
    invoke-virtual {v2, v13}, Lio/casper/android/n/a/a/a/a;->b(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 122
    :try_start_13
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_4

    .line 134
    :catchall_1
    move-exception v2

    :try_start_14
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 150
    :catch_3
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_1

    .line 118
    :catch_4
    move-exception v2

    .line 119
    :goto_7
    :try_start_15
    const-string v3, "SnapBlobResponseParser"

    const-string v11, "Extracting Overlay File from Zip failed with Exception"

    invoke-static {v3, v11, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 120
    const/4 v2, 0x0

    .line 122
    :try_start_16
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 134
    :try_start_17
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 122
    :catchall_2
    move-exception v2

    :goto_8
    :try_start_18
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 134
    :cond_8
    :try_start_19
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 141
    :cond_9
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 142
    :try_start_1b
    invoke-static {v7, v3}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 144
    invoke-virtual {v2, v12}, Lio/casper/android/n/a/a/a/a;->a(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 154
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_2

    .line 154
    :catchall_3
    move-exception v2

    move-object v6, v3

    :goto_9
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 155
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 156
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 157
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_a

    .line 160
    const-string v3, "SnapBlobResponseParser"

    invoke-static {v3, v9}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_a
    throw v2

    .line 154
    :catchall_4
    move-exception v2

    goto :goto_9

    :catchall_5
    move-exception v2

    move-object v4, v7

    goto :goto_9

    :catchall_6
    move-exception v2

    move-object v5, v3

    move-object v4, v7

    goto :goto_9

    :catchall_7
    move-exception v2

    move-object v6, v4

    move-object v4, v5

    move-object v5, v3

    goto :goto_9

    .line 150
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

    .line 122
    :catchall_8
    move-exception v2

    move-object v4, v3

    goto :goto_8

    .line 118
    :catch_7
    move-exception v2

    move-object v4, v3

    goto/16 :goto_7

    .line 109
    :catchall_9
    move-exception v2

    goto/16 :goto_6

    .line 105
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
    .line 21
    invoke-virtual {p0, p1}, Lio/casper/android/n/a/a/c;->a(Lcom/squareup/okhttp/ResponseBody;)Lio/casper/android/n/a/a/a/a;

    move-result-object v0

    return-object v0
.end method
