.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .line 421
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 422
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 438
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # setter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # setter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    new-instance v1, Lcom/google/android/exoplayer/drm/KeysExpiredException;

    invoke-direct {v1}, Lcom/google/android/exoplayer/drm/KeysExpiredException;-><init>()V

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
