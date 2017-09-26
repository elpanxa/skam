.class Lcom/adsdk/sdk/video/SDKVideoView$7;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/SDKVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 355
    const-string v0, "SDKVideoView surfaceChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p3}, Lcom/adsdk/sdk/video/SDKVideoView;->access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 357
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p4}, Lcom/adsdk/sdk/video/SDKVideoView;->access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 358
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 359
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 363
    const-string v0, "Surface created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 365
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$16(Lcom/adsdk/sdk/video/SDKVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$17(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 368
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 372
    const-string v0, "Surface destroyed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 374
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$18(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    .line 378
    return-void
.end method
