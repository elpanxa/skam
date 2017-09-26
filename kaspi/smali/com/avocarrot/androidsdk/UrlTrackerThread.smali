.class public Lcom/avocarrot/androidsdk/UrlTrackerThread;
.super Ljava/lang/Object;
.source "UrlTrackerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field maxRetries:I

.field urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "general"

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqRetries:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/avocarrot/androidsdk/UrlTrackerThread;-><init>(Ljava/util/List;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->maxRetries:I

    .line 27
    iput-object p1, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->maxRetries:I

    .line 29
    return-void
.end method


# virtual methods
.method hitUrl(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 60
    const/4 v1, 0x1

    .line 62
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    :try_start_1
    const-string v2, "general"

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 72
    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 73
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server Response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/avocarrot/androidsdk/UrlTrackerThread;->log(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 84
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 76
    const/4 v1, 0x0

    .line 77
    :try_start_3
    invoke-virtual {p0, v2, p1}, Lcom/avocarrot/androidsdk/UrlTrackerThread;->log(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 80
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 81
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 82
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/avocarrot/androidsdk/UrlTrackerThread;->log(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 88
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "TrackerThread | Couldn\'t track url"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v5, v0, v1, p1, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->maxRetries:I

    if-ge v1, v0, :cond_2

    .line 37
    iget-object v2, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/UrlTrackerThread;->hitUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/UrlTrackerThread;->urls:Ljava/util/List;

    .line 57
    return-void

    .line 50
    :cond_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
