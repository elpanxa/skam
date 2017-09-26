.class public Lcom/revmob/internal/DownloadManager;
.super Landroid/os/AsyncTask;
.source "DownloadManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callResponse:Z

.field private callback:Lcom/revmob/internal/AsyncTaskCompleteListener;

.field private file:Ljava/io/File;

.field private filePath:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private handler:Lcom/revmob/internal/ConnectionHandler;

.field private isSuccessful:Z

.field private url:Ljava/net/URL;

.field private willCache:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/AsyncTaskCompleteListener;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/revmob/internal/DownloadManager;->activity:Landroid/app/Activity;

    .line 39
    iput-object p4, p0, Lcom/revmob/internal/DownloadManager;->callback:Lcom/revmob/internal/AsyncTaskCompleteListener;

    .line 40
    iput-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->willCache:Z

    .line 41
    iput-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->callResponse:Z

    .line 42
    new-instance v0, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;

    invoke-direct {v0}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;-><init>()V

    .line 44
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    iput-object p3, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 51
    iput-object p3, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 59
    const-string v1, "download manager malformed url error, download url"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/ConnectionHandler;ZZ)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/revmob/internal/DownloadManager;->activity:Landroid/app/Activity;

    .line 67
    iput-object p4, p0, Lcom/revmob/internal/DownloadManager;->handler:Lcom/revmob/internal/ConnectionHandler;

    .line 68
    iput-boolean p5, p0, Lcom/revmob/internal/DownloadManager;->willCache:Z

    .line 69
    iput-boolean p6, p0, Lcom/revmob/internal/DownloadManager;->callResponse:Z

    .line 71
    new-instance v0, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;

    invoke-direct {v0}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;-><init>()V

    .line 73
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    :goto_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    iput-object p3, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 80
    iput-object p3, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method private createFilePath(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->willCache:Z

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revmob/internal/DownloadManager;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->willCache:Z

    if-nez v0, :cond_0

    .line 110
    const-string v0, "Download Manager : wont cache file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/revmob/internal/DownloadManager;->createFilePath(Landroid/app/Activity;)V

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    .line 117
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    const-string v2, "Download begining"

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/internal/DownloadManager;->url:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filepath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/revmob/internal/DownloadManager;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 131
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v4, 0x32

    invoke-direct {v2, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 136
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 137
    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iput-boolean v6, p0, Lcom/revmob/internal/DownloadManager;->isSuccessful:Z

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    const-string v0, "Download Manager : will cache file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 146
    iget-object v2, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 149
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download ready in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 155
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->isSuccessful:Z

    goto :goto_2

    .line 151
    :cond_3
    const-string v0, "download Managaer"

    const-string v1, "file alreadyExists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "file path"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "file name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/internal/DownloadManager;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSuccessful()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->isSuccessful:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revmob/internal/DownloadManager;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    const-string v0, "onPostExecute"

    const-string v1, "download manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->callback:Lcom/revmob/internal/AsyncTaskCompleteListener;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->callback:Lcom/revmob/internal/AsyncTaskCompleteListener;

    invoke-interface {v0, p1}, Lcom/revmob/internal/AsyncTaskCompleteListener;->onTaskComplete(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/revmob/internal/DownloadManager;->callResponse:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/revmob/internal/DownloadManager;->handler:Lcom/revmob/internal/ConnectionHandler;

    iget-boolean v1, p0, Lcom/revmob/internal/DownloadManager;->isSuccessful:Z

    invoke-interface {v0, p1, v1}, Lcom/revmob/internal/ConnectionHandler;->onResponse(Ljava/lang/String;Z)V

    goto :goto_0
.end method
