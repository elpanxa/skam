.class Lcom/revmob/ads/fullscreen/RevMobVideo$4;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 361
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-object p1, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoMp:Landroid/media/MediaPlayer;

    .line 362
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v1, v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 364
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOff()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOn()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 369
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->started:Z

    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "start"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$000(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-boolean v3, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->started:Z

    .line 374
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v4}, Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideoDurationMethods()I

    move-result v4

    iget-object v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v5, v5, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v5}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    # getter for: Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$300(Lcom/revmob/ads/fullscreen/RevMobVideo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$4;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 380
    return-void
.end method
