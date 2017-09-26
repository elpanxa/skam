.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoViewController$11;
    }
.end annotation


# static fields
.field static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field private static final SEEKER_POSITION_NOT_INITIALIZED:I = -0x1

.field static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field private static final VIDEO_COUNTDOWN_UPDATE_INTERVAL:J = 0xfaL

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field private mAdsByView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDuration:I

.field private mHasSkipOffset:Z

.field private mHasSocialActions:Z

.field private final mIconView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsCalibrationDone:Z

.field private mIsClosing:Z

.field private mIsVideoFinishedPlaying:Z

.field private final mLandscapeCompanionAdView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPortraitCompanionAdView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private final mSocialActionsCompanionAds:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSocialActionsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoError:Z

.field private final mVideoView:Lcom/mopub/mobileads/VastVideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 111
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0, p6}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 90
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 95
    iput-boolean v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 96
    iput-boolean v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    .line 97
    iput-boolean v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    .line 103
    iput-boolean v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    .line 112
    iput v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p3, :cond_0

    .line 116
    const-string v0, "resumed_vast_config"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 119
    :cond_0
    const-string v1, "vast_video_config"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 120
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v2, :cond_1

    .line 122
    check-cast v0, Lcom/mopub/mobileads/VastVideoConfig;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 123
    const-string v0, "current_position"

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VastVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 126
    check-cast v0, Lcom/mopub/mobileads/VastVideoConfig;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VastVideoConfig is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 140
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 158
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 161
    invoke-direct {p0, p1, v6}, Lcom/mopub/mobileads/VastVideoViewController;->addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V

    .line 164
    invoke-direct {p0, p1, v3}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->requestFocus()Z

    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 176
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addTopGradientStripWidget(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0, p1, v6}, Lcom/mopub/mobileads/VastVideoViewController;->addProgressBarWidget(Landroid/content/Context;I)V

    .line 182
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addBottomGradientStripWidget(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0, p1, v6}, Lcom/mopub/mobileads/VastVideoViewController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0, p1, v0, v6}, Lcom/mopub/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addCtaButtonWidget(Landroid/content/Context;)V

    .line 204
    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 206
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    const-string v1, "socialActions"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    const/16 v7, 0x10

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoViewController;->createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    .line 213
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v1, p0, v2, v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 218
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VastVideoViewController;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mopub/mobileads/VastVideoViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mAdsByView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->adjustSkipOffset()V

    return-void
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object v0
.end method

.method private addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 565
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 566
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 571
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    return-void
.end method

.method private addBottomGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 481
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 488
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    return-void

    .line 479
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private addCloseButtonWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 524
    new-instance v0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 525
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 527
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 529
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 547
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 550
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonText(Ljava/lang/String;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V

    .line 560
    :cond_1
    return-void
.end method

.method private addCtaButtonWidget(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_1

    move v0, v1

    .line 506
    :goto_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 509
    :goto_1
    new-instance v2, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZZ)V

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    .line 512
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateCtaText(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 505
    goto :goto_0

    :cond_2
    move v1, v2

    .line 506
    goto :goto_1
.end method

.method private addProgressBarWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 492
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 493
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 494
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 495
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    return-void
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 499
    new-instance v0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 500
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 501
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method private addTopGradientStripWidget(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 466
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 468
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v3

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 475
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 476
    return-void

    :cond_0
    move v4, v5

    .line 466
    goto :goto_0
.end method

.method private adjustSkipOffset()V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 349
    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_0

    .line 350
    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 359
    :cond_1
    return-void
.end method

.method private createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 806
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 807
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 809
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 817
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$9;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 831
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$10;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 838
    return-object v0
.end method

.method private createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VastVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoView;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setId(I)V

    .line 369
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 386
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 439
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 459
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    .line 462
    return-object v0
.end method

.method private shouldAllowClickThrough()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private startRunnables()V
    .locals 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 795
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    .line 796
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 800
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->stop()V

    .line 801
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method createAdsByView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsCompanionAds:Ljava/util/Map;

    const-string v1, "adsBy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mopub/mobileads/VastVideoViewController;->createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 586
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 588
    if-nez p2, :cond_0

    .line 589
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 590
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :goto_0
    return-object v0

    .line 594
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 595
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 596
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 600
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 606
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 610
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 612
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastIconConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    .line 682
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 684
    if-nez p2, :cond_0

    .line 685
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 723
    :goto_0
    return-object v0

    .line 688
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 689
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 702
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$8;

    invoke-direct {v1, p0, p2}, Lcom/mopub/mobileads/VastVideoViewController$8;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 709
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 711
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 715
    invoke-static {v4, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 717
    invoke-static {v4, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 719
    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 721
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method createSocialActionsView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;IILandroid/view/View;II)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 633
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 634
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 636
    if-nez p2, :cond_0

    .line 637
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 638
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :goto_0
    return-object v0

    .line 642
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    .line 643
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setHasSocialActions(Z)V

    .line 645
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 647
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 648
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 649
    sub-int v3, p3, v2

    div-int/lit8 v3, v3, 0x2

    .line 650
    int-to-float v4, p7

    invoke-static {v4, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 652
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 654
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v5, p4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 655
    const/4 v1, 0x6

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 656
    invoke-virtual {v5, v4, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 658
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 659
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 660
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 664
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    invoke-virtual {v0, p6}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-object v0
.end method

.method getCountdownRunnable()Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-object v0
.end method

.method getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method getCurrentPosition()I
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getHasSkipOffset()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    return v0
.end method

.method getHasSocialActions()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSocialActions:Z

    return v0
.end method

.method getIconView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method getLandscapeCompanionAdView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    .line 762
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getPortraitCompanionAdView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method getProgressCheckerRunnable()Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    return-object v0
.end method

.method getRadialCountdownWidget()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method getShowCloseButtonDelay()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method getSocialActionsView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    return-object v0
.end method

.method getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getVastVideoView()Lcom/mopub/mobileads/VastVideoView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method getVideoError()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method handleIconDisplay(I)V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method isCalibrationDone()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return v0
.end method

.method isShowCloseButtonEventFired()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method isVideoFinishedPlaying()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method makeVideoInteractable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 737
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoSkippable()V

    .line 741
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSocialActionsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 343
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 313
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 314
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    .line 327
    :cond_1
    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 252
    sget-object v0, Lcom/mopub/mobileads/VastVideoViewController$11;->$SwitchMap$com$mopub$common$util$DeviceUtils$ForceOrientation:[I

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    .line 268
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 269
    return-void

    .line 254
    :pswitch_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetRequestedOrientation(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 299
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->onDestroy()V

    .line 302
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 289
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->pause()V

    .line 291
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    .line 294
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->startRunnables()V

    .line 275
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-lez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->seekTo(I)V

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->start()V

    .line 281
    :cond_1
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    .line 284
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    const-string v0, "current_position"

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v0, "resumed_vast_config"

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 308
    return-void
.end method

.method setCloseButtonVisible(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 880
    return-void
.end method

.method setIsClosing(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    .line 1005
    return-void
.end method

.method setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 957
    return-void
.end method

.method setRadialCountdownWidget(Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 970
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 971
    return-void
.end method

.method setVideoError()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    .line 922
    return-void
.end method

.method shouldBeInteractable()Z
    .locals 2

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCountdown()V
    .locals 3

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    .line 752
    :cond_0
    return-void
.end method

.method updateProgressBar()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 756
    return-void
.end method
