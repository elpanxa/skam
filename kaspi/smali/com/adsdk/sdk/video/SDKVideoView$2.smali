.class Lcom/adsdk/sdk/video/SDKVideoView$2;
.super Ljava/lang/Object;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 268
    const-string v0, "SDKVideoView onPrepared"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    .line 271
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setEnabled(Z)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$4(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v0

    .line 279
    if-eqz v0, :cond_2

    .line 280
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$5(Lcom/adsdk/sdk/video/SDKVideoView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    const-string v0, "SDKVideoView onPrepared surface not ready yet"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 294
    :cond_3
    :goto_0
    return-void

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V

    .line 287
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$7(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 288
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    .line 290
    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$2;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->show()V

    goto :goto_0
.end method
