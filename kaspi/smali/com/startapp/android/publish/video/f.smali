.class public Lcom/startapp/android/publish/video/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/video/f$a;,
        Lcom/startapp/android/publish/video/f$b;,
        Lcom/startapp/android/publish/video/f$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/startapp/android/publish/video/f$c;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/startapp/android/publish/video/f$c;->a:Lcom/startapp/android/publish/video/f$c;

    .line 157
    invoke-static {p0}, Lcom/startapp/android/publish/video/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget-object v0, Lcom/startapp/android/publish/video/f$c;->d:Lcom/startapp/android/publish/video/f$c;

    .line 161
    :cond_0
    const-class v1, Lcom/startapp/android/publish/FullScreenActivity;

    invoke-static {p0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    sget-object v0, Lcom/startapp/android/publish/video/f$c;->c:Lcom/startapp/android/publish/video/f$c;

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/startapp/android/publish/video/f;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    sget-object v0, Lcom/startapp/android/publish/video/f$c;->b:Lcom/startapp/android/publish/video/f$c;

    .line 169
    :cond_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "StartAppWall.VideoUtil"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading video from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 88
    :try_start_0
    invoke-static {p0, p2}, Lcom/startapp/android/publish/video/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 116
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 119
    :goto_0
    return-object v0

    .line 94
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 95
    :try_start_3
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    const/16 v2, 0x1000

    :try_start_4
    new-array v6, v2, [B

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".temp"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    .line 101
    :goto_1
    :try_start_5
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 102
    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :goto_2
    :try_start_6
    const-string v5, "StartAppWall.VideoUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading video from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/startapp/android/publish/video/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 114
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 105
    :cond_1
    :try_start_8
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/startapp/android/publish/video/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 114
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 117
    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    .line 118
    goto/16 :goto_0

    .line 113
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 114
    :goto_3
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 117
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 113
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 108
    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    .line 117
    :catch_7
    move-exception v1

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 183
    const-string v0, "videoErrorsCount"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    const-string v1, "videoErrorsCount"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/h/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoConfig;->getVideoErrorsThreshold()I

    move-result v1

    if-gez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    const-string v1, "videoErrorsCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/video/VideoConfig;->getVideoErrorsThreshold()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 199
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getVideoConfig()Lcom/startapp/android/publish/video/VideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/video/VideoConfig;->getMinAvailableStorageRequired()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 200
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
