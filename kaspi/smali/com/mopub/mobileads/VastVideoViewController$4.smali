.class Lcom/mopub/mobileads/VastVideoViewController$4;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$videoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # invokes: Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1600(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 392
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 394
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->videoCompleted(Z)V

    .line 395
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # setter for: Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z
    invoke-static {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 399
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getRemainingProgressTrackerCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1300(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 412
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 420
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 421
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoComplete()V

    .line 424
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 426
    if-ne v0, v4, :cond_4

    .line 427
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$2100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I
    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->access$300(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    .line 436
    :cond_2
    :goto_2
    return-void

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$600(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$2200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    # getter for: Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
