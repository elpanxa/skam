.class Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 647
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;

    .line 653
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 656
    :pswitch_0
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->task:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    iget-object v0, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    # invokes: Lio/fabric/sdk/android/services/concurrency/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$500(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 659
    :pswitch_1
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->task:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    iget-object v0, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->data:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
