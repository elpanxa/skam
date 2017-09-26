.class Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;
.super Ljava/lang/Object;
.source "ImpressionManager.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/ImpressionManager$IScheduleExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/ImpressionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduleExecutor"
.end annotation


# instance fields
.field scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

.field scheduledServiceFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/avocarrot/androidsdk/ImpressionManager;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/ImpressionManager;)V
    .locals 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledServiceFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 147
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/ImpressionManager;->VisibilityTracker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledServiceFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Could not start Impression Service"

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->serviceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledServiceFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutor;->scheduledServiceFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0
.end method
