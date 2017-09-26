.class public Lcom/adsdk/sdk/video/RichMediaActivity;
.super Landroid/app/Activity;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;,
        Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;,
        Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
    }
.end annotation


# static fields
.field public static final TYPE_BROWSER:I = 0x0

.field public static final TYPE_INTERSTITIAL:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private buttonsLayout:Landroid/widget/LinearLayout;

.field private mAd:Lcom/adsdk/sdk/AdResponse;

.field private mCanClose:Z

.field private mCheckProgressTask:Ljava/lang/Runnable;

.field private mCustomVideoView:Landroid/widget/VideoView;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

.field protected mInterstitialAutocloseReset:Z

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoClickListener:Landroid/view/View$OnClickListener;

.field mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field mOnVideoSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field private final mOverlayClickListener:Landroid/view/View$OnClickListener;

.field private final mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mResult:Z

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/ImageView;

.field protected mTimeTest:I

.field private mType:I

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;

.field private mVideoHeight:I

.field private mVideoLastPosition:I

.field private mVideoLayout:Landroid/widget/FrameLayout;

.field private mVideoTimeoutTimer:Ljava/util/Timer;

.field private mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

.field private mVideoWidth:I

.field private mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field marginArg:I

.field metrics:Landroid/util/DisplayMetrics;

.field paddingArg:I

.field skipButtonSizeLand:I

.field skipButtonSizePort:I

.field private uri:Landroid/net/Uri;

.field private videoFrame:Landroid/widget/FrameLayout;

.field private wasClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 151
    const/4 v0, 0x5

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->paddingArg:I

    .line 153
    const/16 v0, 0x8

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->marginArg:I

    .line 155
    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    .line 157
    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    .line 191
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 204
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$2;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$3;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 238
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$4;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 251
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$5;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$6;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 284
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$7;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoClickListener:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$8;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 329
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$9;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$9;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    .line 350
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$10;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$10;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    .line 368
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$11;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$11;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    .line 386
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$12;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$12;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 405
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$13;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$13;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 421
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$14;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$14;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$15;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$15;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    .line 459
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$16;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$16;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    return-void
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/ResourceManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/RichMediaActivity;->trackClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method private createLocalAdListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$17;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$17;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    return-object v0
.end method

.method private createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$18;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$18;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    return-object v0
.end method

.method private initInterstitialFromBannerView()V
    .locals 12

    .prologue
    const/16 v4, 0x140

    const/4 v11, -0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 532
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 533
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 536
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    const/16 v3, 0x1e0

    .line 544
    :goto_0
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->createLocalAdListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/AdResponse;IIZLcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;)V

    .line 545
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    float-to-int v2, v2

    int-to-float v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v10

    float-to-int v3, v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->showContent()V

    .line 547
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 550
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    .line 551
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    .line 553
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 557
    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 558
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 561
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 567
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 569
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v9, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 570
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 571
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 573
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v3, -0x12

    invoke-virtual {v2, p0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iput-boolean v9, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 578
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 583
    return-void

    .line 541
    :cond_3
    const/16 v0, 0x1e0

    move v3, v4

    move v4, v0

    goto/16 :goto_0

    .line 564
    :cond_4
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1
.end method

.method private initRootLayout()V
    .locals 2

    .prologue
    .line 627
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    .line 628
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 629
    return-void
.end method

.method private initVideoView()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 633
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getVideoData()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    .line 635
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    .line 636
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-nez v0, :cond_c

    .line 637
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-ge v0, v1, :cond_0

    .line 638
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 639
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 640
    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 647
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->width:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 648
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->height:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 649
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    if-gtz v0, :cond_d

    .line 650
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 651
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 663
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 665
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    .line 666
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;

    .line 668
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v3, v3, Lcom/adsdk/sdk/video/VideoData;->display:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adsdk/sdk/video/SDKVideoView;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 669
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    if-eqz v0, :cond_3

    .line 673
    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v6, v6, v6}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    .line 674
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/WebFrame;->setEnableZoom(Z)V

    .line 675
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    .line 678
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    if-lez v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    if-nez v0, :cond_f

    .line 683
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    .line 687
    :goto_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 688
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v2, v2, Lcom/adsdk/sdk/video/VideoData;->overlayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 689
    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v3, v3, Lcom/adsdk/sdk/video/VideoData;->overlayHeight:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 688
    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 691
    const/16 v0, 0x51

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 692
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    :cond_3
    new-instance v0, Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/video/MediaController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 695
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setMediaController(Lcom/adsdk/sdk/video/MediaController;)V

    .line 696
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 697
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->resumeEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 699
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V

    .line 700
    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 701
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V

    .line 703
    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    if-eqz v0, :cond_14

    .line 707
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 708
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 712
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 713
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 718
    :goto_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 719
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-ne v0, v5, :cond_11

    .line 720
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 721
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 722
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 729
    :goto_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 730
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    const/16 v3, -0x12

    invoke-virtual {v0, p0, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 733
    :goto_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_13

    .line 735
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 736
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    :goto_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    :goto_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_7

    .line 745
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    .line 746
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 747
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    .line 748
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 749
    sget-object v2, Lcom/adsdk/sdk/Const;->LOADING:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    .line 754
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 756
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 757
    const-string v1, "Click here"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 758
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 759
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 760
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 761
    const v1, -0x10181717

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 762
    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$19;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$19;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    const/high16 v1, 0x434d0000    # 205.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 771
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 773
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 776
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 777
    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 778
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 780
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 783
    const-string v1, "\u21bb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 785
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 786
    const v1, -0x10181717

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 787
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 788
    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$20;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$20;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickThrough:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 803
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_8
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 807
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 808
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 809
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 810
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->impressionEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 811
    :cond_9
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V

    .line 812
    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 813
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 819
    :cond_b
    iput v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    .line 820
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    .line 821
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 822
    return-void

    .line 642
    :cond_c
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-ge v0, v1, :cond_0

    .line 643
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 644
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 645
    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    goto/16 :goto_0

    .line 653
    :cond_d
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 654
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 655
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 657
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-le v0, v1, :cond_e

    .line 658
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 659
    :cond_e
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-le v0, v1, :cond_1

    .line 660
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    goto/16 :goto_1

    .line 685
    :cond_f
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 715
    :cond_10
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_3

    .line 724
    :cond_11
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 725
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 726
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_4

    .line 732
    :cond_12
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v3, -0x12

    invoke-virtual {v2, p0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 738
    :cond_13
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 739
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 743
    :cond_14
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto/16 :goto_7

    .line 815
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 816
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v2, v0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    goto/16 :goto_8
.end method

.method private initWebBrowserView(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 825
    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    .line 827
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 828
    return-void
.end method

.method private notifyAdClicked()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->wasClicked:Z

    .line 623
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->notifyAdClick(Lcom/adsdk/sdk/AdResponse;)V

    .line 624
    return-void
.end method

.method private setOrientation()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setOrientationOldApi()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private trackClick(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 473
    new-instance v0, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    .line 474
    iput-object p1, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    .line 476
    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    .line 477
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish Activity type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 486
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 497
    return-void

    .line 488
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDipSize(I)I
    .locals 3

    .prologue
    .line 500
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 510
    const-string v0, "Closing custom view on back key pressed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 516
    :pswitch_1
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 520
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 521
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 522
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v2, -0x12

    invoke-virtual {v1, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch -0x12
        :pswitch_1
    .end packed-switch
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V

    .line 832
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 841
    :goto_0
    return-void

    .line 834
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 847
    const-string v0, "RichMediaActivity onConfigurationChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 854
    const-string v0, "RichMediaActivity onCreate"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 855
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 859
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 861
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 862
    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    .line 864
    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 865
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 866
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 867
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 868
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 869
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 870
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 871
    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity Window Size:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setVolumeControlStream(I)V

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 878
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 880
    if-eqz v1, :cond_0

    const-string v2, "RICH_AD_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 881
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    .line 882
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 884
    const-string v0, "url is null so do not load anything"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 939
    :goto_0
    return-void

    .line 888
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 892
    :goto_1
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    .line 894
    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 895
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initRootLayout()V

    .line 897
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-nez v0, :cond_3

    .line 898
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initWebBrowserView(Z)V

    .line 899
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    .line 933
    :goto_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 934
    const-string v0, "RichMediaActivity onCreate done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    :catch_0
    move-exception v0

    .line 937
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 890
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    goto :goto_1

    .line 901
    :cond_3
    const-string v0, "RICH_AD_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 904
    const-string v0, "RICH_AD_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 905
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-ne v0, v4, :cond_4

    .line 906
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 921
    :cond_4
    :goto_3
    :pswitch_0
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 923
    :pswitch_1
    const-string v0, "Type video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initVideoView()V

    goto :goto_2

    .line 908
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    .line 913
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_5

    .line 914
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setOrientationOldApi()V

    .line 918
    :goto_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    .line 916
    :cond_5
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setOrientation()V

    goto :goto_4

    .line 927
    :pswitch_4
    const-string v0, "Type interstitial like banner"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initInterstitialFromBannerView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 921
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 961
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/ResourceManager;->releaseInstance()V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->destroy()V

    .line 965
    :cond_1
    const-string v0, "RichMediaActivity onDestroy"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 966
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 968
    const-string v0, "RichMediaActivity onDestroy done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 973
    const-string v0, "onHideCustomView Hidding Custom View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 977
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    .line 978
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 981
    :try_start_0
    const-string v0, "onHideCustomView stop video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    .line 990
    :cond_0
    const-string v0, "onHideCustomView calling callback"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 992
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 994
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    const-string v0, "Couldn\'t stop custom video view"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->goBack()V

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1008
    const-string v0, "RichMediaActivity onPause"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1009
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1010
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    const-string v0, "RichMediaActivity onPause done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1023
    return-void

    .line 1012
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    .line 1013
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->stopPlayback()V

    .line 1014
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1015
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    goto :goto_0

    .line 1010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->wasClicked:Z

    if-eqz v0, :cond_0

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 1029
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 1033
    :cond_0
    const-string v0, "RichMediaActivity onResume"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1034
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1035
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1051
    :cond_1
    :goto_0
    const-string v0, "RichMediaActivity onResume done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1052
    return-void

    .line 1037
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1038
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    .line 1039
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    .line 1040
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 1041
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    .line 1042
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    .line 1043
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x124f80

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 1056
    const-string v0, " onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1057
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1059
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    .line 1060
    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1061
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1063
    const-string v0, " onShowCustomView Starting Video View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    .line 1065
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$21;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$21;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1074
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 1080
    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity play video:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1085
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1087
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public replayVideo()V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    .line 1096
    :cond_0
    return-void
.end method
