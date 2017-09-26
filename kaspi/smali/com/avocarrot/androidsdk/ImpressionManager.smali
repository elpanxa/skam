.class Lcom/avocarrot/androidsdk/ImpressionManager;
.super Ljava/lang/Object;
.source "ImpressionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;,
        Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;,
        Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;
    }
.end annotation


# instance fields
.field protected final VisibilityTracker:Ljava/lang/Runnable;

.field impressionExecutor:Ljava/util/concurrent/ExecutorService;

.field scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

.field trackedModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/avocarrot/androidsdk/ImpressionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->impressionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/avocarrot/androidsdk/ImpressionManager$1;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/ImpressionManager$1;-><init>(Lcom/avocarrot/androidsdk/ImpressionManager;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->VisibilityTracker:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;-><init>(Lcom/avocarrot/androidsdk/ImpressionManager;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

    .line 43
    return-void
.end method


# virtual methods
.method clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    :cond_2
    :goto_2
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "ImpressionManager, clear scheduleExecutor"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 229
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "ImpressionManager, clear trackedModels"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :catch_2
    move-exception v0

    .line 234
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "ImpressionManager, clear trackingBuffer"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method isModelConsideredVisible(Lcom/avocarrot/androidsdk/BaseModel;)Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public observeView(Lcom/avocarrot/androidsdk/BaseController;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;Lcom/avocarrot/androidsdk/VisibilityConditions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackedModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ImpressionModel;

    .line 60
    iget-object v4, v0, Lcom/avocarrot/androidsdk/ImpressionModel;->model:Lcom/avocarrot/androidsdk/BaseModel;

    invoke-virtual {v4}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionModel;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, p3, :cond_6

    :goto_2
    move-object v1, v0

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 67
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/avocarrot/androidsdk/ImpressionModel;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/avocarrot/androidsdk/ImpressionModel;-><init>(Lcom/avocarrot/androidsdk/BaseController;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;Lcom/avocarrot/androidsdk/VisibilityConditions;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->scheduleExecutor:Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;->start()V

    .line 77
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Added Native Ad in Impression Manager queue"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_5
    if-eq v2, v1, :cond_4

    .line 69
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager;->trackingBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/avocarrot/androidsdk/ImpressionModel;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/avocarrot/androidsdk/ImpressionModel;-><init>(Lcom/avocarrot/androidsdk/BaseController;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;Lcom/avocarrot/androidsdk/VisibilityConditions;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
