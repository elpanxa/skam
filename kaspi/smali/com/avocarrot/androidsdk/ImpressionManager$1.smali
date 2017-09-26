.class Lcom/avocarrot/androidsdk/ImpressionManager$1;
.super Ljava/lang/Object;
.source "ImpressionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/ImpressionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/ImpressionManager;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/ImpressionManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v4, v0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ImpressionModel;

    .line 93
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->conditionsMet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->getModel()Lcom/avocarrot/androidsdk/BaseModel;

    move-result-object v6

    .line 95
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/avocarrot/androidsdk/BaseModel;->getImpressionUrls()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Lcom/avocarrot/androidsdk/BaseModel;->getImpressionUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/ImpressionManager;->impressionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/avocarrot/androidsdk/UrlTrackerThread;

    iget-object v8, v0, Lcom/avocarrot/androidsdk/ImpressionModel;->model:Lcom/avocarrot/androidsdk/BaseModel;

    invoke-virtual {v8}, Lcom/avocarrot/androidsdk/BaseModel;->getImpressionUrls()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/avocarrot/androidsdk/UrlTrackerThread;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->getController()Lcom/avocarrot/androidsdk/BaseController;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/avocarrot/androidsdk/BaseController;->impressionRegistered(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_1
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 111
    :goto_3
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 115
    :goto_4
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 98
    :cond_2
    :try_start_3
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v7, "Impression Urls Not Found "

    invoke-static {v1, v7}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    sget-object v7, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v8, "Cannot inform Controller for Impression "

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v7, v8, v1, v9}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$1;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager;->scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;->stop()V

    .line 124
    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    return-void

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_3
.end method
