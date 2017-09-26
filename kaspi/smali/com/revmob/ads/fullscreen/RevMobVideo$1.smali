.class Lcom/revmob/ads/fullscreen/RevMobVideo$1;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->createVideoCloseButton()Landroid/view/View;
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
    .line 244
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->closed:Z

    .line 249
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "close"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$000(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 253
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->removeHandlerCallbacks()V

    .line 254
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 255
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->isTherePostRoll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoCompleted()V

    .line 265
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 266
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finishVideo()V

    .line 267
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->isTherePostRoll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    .line 270
    :cond_2
    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$1;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    goto :goto_0
.end method
