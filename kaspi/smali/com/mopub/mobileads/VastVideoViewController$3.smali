.class Lcom/mopub/mobileads/VastVideoViewController$3;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$videoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;
    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v1

    # setter for: Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I
    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$302(Lcom/mopub/mobileads/VastVideoViewController;I)I

    .line 376
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # invokes: Lcom/mopub/mobileads/VastVideoViewController;->adjustSkipOffset()V
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$800(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoView;->prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1300(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I
    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$1200(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 382
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I
    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1200(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    # setter for: Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z
    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 384
    return-void
.end method
