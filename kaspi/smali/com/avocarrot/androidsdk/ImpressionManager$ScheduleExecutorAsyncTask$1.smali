.class Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask$1;
.super Ljava/lang/Object;
.source "ImpressionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask$1;->this$1:Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    :goto_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask$1;->this$1:Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;->this$0:Lcom/avocarrot/androidsdk/ImpressionManager;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager;->VisibilityTracker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask$1;->this$1:Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;

    iget-boolean v0, v0, Lcom/avocarrot/androidsdk/ImpressionManager$ScheduleExecutorAsyncTask;->serviceStarted:Z

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 211
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method
