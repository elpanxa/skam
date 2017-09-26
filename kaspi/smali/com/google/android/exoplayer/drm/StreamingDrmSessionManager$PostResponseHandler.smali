.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;
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
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 460
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$700(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$800(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
