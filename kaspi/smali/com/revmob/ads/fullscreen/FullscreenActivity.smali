.class public Lcom/revmob/ads/fullscreen/FullscreenActivity;
.super Landroid/app/Activity;
.source "FullscreenActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x23000000

.field private static final FORMAT:Ljava/lang/String; = "%02d"

.field private static fullscreenActivityAvailable:Ljava/lang/Boolean;


# instance fields
.field public Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private buttonParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public buttonSize:I

.field public closeButton:Landroid/widget/ImageView;

.field public closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private currentDpi:I

.field public currentOrientation:I

.field public data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

.field private deviceDpiRatio:D

.field private deviceHeightRatio:D

.field private deviceRatio:D

.field private deviceSizeRatio:D

.field private deviceWidthRatio:D

.field public followAppOrientation:Z

.field public frame:Landroid/widget/ImageView;

.field public frameHeight:D

.field public frameLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public frameWidth:D

.field private fullscreenPercentage:D

.field public fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

.field public handler:Landroid/os/Handler;

.field public imageHeight:D

.field private imageInverseRatio:D

.field private imageRatio:D

.field public imageWidth:D

.field public isParallaxEnabled:Z

.field public isRewarded:Ljava/lang/Boolean;

.field private isTherePostRoll:Ljava/lang/Boolean;

.field public isWebview:Z

.field public layout:Landroid/widget/RelativeLayout;

.field public layoutP:Landroid/widget/RelativeLayout$LayoutParams;

.field private mOrientation:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private metrics:Landroid/util/DisplayMetrics;

.field private okButton:Landroid/widget/Button;

.field private orientationLock:I

.field private postRollHeight:I

.field private postRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private postRollView:Landroid/widget/ImageView;

.field private postRollWidth:I

.field private preRollHeight:I

.field private preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private preRollView:Landroid/widget/ImageView;

.field private preRollWidth:I

.field public progressBar:Landroid/widget/ProgressBar;

.field public publisherListener:Lcom/revmob/RevMobAdsListener;

.field public relativeFrameSideThickness:D

.field public relativeFrameTopThickness:D

.field public relativeLayout:Landroid/widget/RelativeLayout;

.field public relativeLayout2:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWidth:I

.field public shouldNotSkipVideo:Z

.field private stopPosition:I

.field public stopTimer1:Z

.field private textPostRoll:Landroid/widget/TextView;

.field private textPreRoll:Landroid/widget/TextView;

.field private textTopMargin:I

.field private textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 90
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    .line 91
    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isParallaxEnabled:Z

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->handler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->stopTimer1:Z

    .line 98
    iput v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->stopPosition:I

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isRewarded:Ljava/lang/Boolean;

    .line 118
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isTherePostRoll:Ljava/lang/Boolean;

    .line 131
    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceRatio:D

    .line 132
    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceWidthRatio:D

    .line 133
    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceHeightRatio:D

    .line 134
    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    .line 135
    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    .line 136
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    .line 137
    iput v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->orientationLock:I

    .line 138
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->shouldNotSkipVideo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createVideoView()V

    return-void
.end method

.method private addCloseButton()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xb

    const/4 v4, 0x6

    .line 913
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    .line 914
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/revmob/ads/internal/StaticAssets;->getCloseButton()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 915
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    .line 926
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 927
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFullscreenPercentage()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    .line 929
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 931
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 946
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    return-void

    .line 933
    :cond_0
    invoke-static {p0, v6}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 934
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 935
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 936
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 937
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-static {p0, v6}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 941
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 942
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 943
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 944
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private createPreRollView()Landroid/view/View;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    .line 476
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    .line 477
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollPortrait()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/FullscreenActivity$3;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$3;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollLandscape()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private createVideoView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 456
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 457
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->okButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 468
    :cond_2
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 469
    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-direct {v1, p0, v2, v0, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;-><init>(Landroid/app/Activity;Lcom/revmob/ads/fullscreen/client/FullscreenData;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    .line 470
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->videoView:Landroid/widget/VideoView;

    .line 472
    return-void
.end method

.method private createViewClickUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 902
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;

    new-instance v1, Lcom/revmob/ads/fullscreen/FullscreenActivity$5;

    invoke-direct {v1, p0, v2, v2}, Lcom/revmob/ads/fullscreen/FullscreenActivity$5;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    .line 909
    return-void
.end method

.method private initFullscreen()V
    .locals 9

    .prologue
    const/16 v5, 0x30

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 345
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 346
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    .line 347
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFullscreenPercentage()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 352
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    .line 353
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    invoke-virtual {v1, v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frameLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 355
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frameLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 357
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getImageHeight()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    .line 362
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getImageWidth()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    .line 364
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    .line 365
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    .line 366
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 369
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_5

    .line 370
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 371
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 372
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 387
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 403
    :goto_1
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->playSoundOnShow()V

    .line 404
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->addCloseButton()V

    .line 405
    return-void

    .line 374
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    .line 377
    :cond_3
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 378
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    .line 380
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    .line 384
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 398
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->playSoundOnShow()V

    goto/16 :goto_1
.end method

.method public static isFullscreenActivityAvailable(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenActivityAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 142
    const-class v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-static {p0, v0}, Lcom/revmob/internal/AndroidHelper;->isIntentAvailable(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenActivityAvailable:Ljava/lang/Boolean;

    .line 144
    :cond_0
    sget-object v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenActivityAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private playSoundOnShow()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Lcom/revmob/internal/RevMobSoundPlayer;

    invoke-direct {v0}, Lcom/revmob/internal/RevMobSoundPlayer;-><init>()V

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/revmob/internal/RevMobSoundPlayer;->playFullscreenSound(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1056
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 593
    return-void
.end method

.method public addProgressBar()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 884
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 886
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 887
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 889
    const/16 v1, 0xf

    invoke-static {p0, v1}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 890
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 891
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    :cond_0
    return-void
.end method

.method public changeFullscreenImageOrientation(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 669
    if-eqz p1, :cond_7

    .line 670
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 671
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-le v0, v1, :cond_3

    .line 672
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    .line 673
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 674
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 683
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    if-ne v0, v8, :cond_0

    .line 684
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 687
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 688
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    :goto_2
    return-void

    .line 676
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    .line 679
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_0

    .line 690
    :cond_3
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_6

    .line 691
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 692
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 699
    :goto_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 701
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    if-ne v0, v8, :cond_4

    .line 702
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :cond_4
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 705
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 706
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 694
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_3

    .line 697
    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_3

    .line 711
    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 712
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-ge v0, v1, :cond_b

    .line 713
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_a

    .line 714
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    .line 715
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 722
    :goto_4
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 724
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    if-ne v0, v8, :cond_8

    .line 725
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    :cond_8
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 728
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 729
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    :goto_5
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 717
    :cond_9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_4

    .line 720
    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_4

    .line 732
    :cond_b
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_e

    .line 733
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageWidth:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    .line 734
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    .line 741
    :goto_6
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 743
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    if-ne v0, v8, :cond_c

    .line 744
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    :cond_c
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 747
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 748
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 736
    :cond_d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->imageInverseRatio:D

    iget-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_6

    .line 739
    :cond_e
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layoutP:Landroid/widget/RelativeLayout$LayoutParams;

    goto/16 :goto_6
.end method

.method public changePostRollOrientation(Z)V
    .locals 11

    .prologue
    const/16 v10, 0xe

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 835
    if-eqz p1, :cond_1

    .line 836
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-le v0, v1, :cond_0

    .line 837
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 838
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 840
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 841
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 843
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    :goto_0
    return-void

    .line 846
    :cond_0
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 847
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 849
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 850
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 852
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 855
    :cond_1
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-le v0, v1, :cond_2

    .line 856
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 857
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 859
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 860
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 862
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 865
    :cond_2
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 866
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 868
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 869
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 871
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public changePreRollOrientation(Z)V
    .locals 12

    .prologue
    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/16 v9, 0xe

    const/16 v8, 0xd

    const-wide v6, 0x3fe999999999999aL    # 0.8

    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 756
    if-eqz p1, :cond_1

    .line 757
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-le v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 759
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 760
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 761
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 762
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 765
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 766
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 769
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 771
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 772
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 774
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 777
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 778
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 779
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 780
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 783
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 784
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 787
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 789
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 790
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 793
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 795
    :cond_1
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-le v0, v1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 797
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 798
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 799
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 800
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 803
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 804
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 807
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 809
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 810
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 812
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 815
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 816
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 817
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 818
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 821
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 822
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 825
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 827
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 828
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 830
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 952
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 953
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$7;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 967
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 973
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 970
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 971
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    goto :goto_0
.end method

.method createFullscreenView()V
    .locals 6

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fullscreen loaded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isHtmlFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 327
    new-instance v1, Lcom/revmob/internal/RevMobWebViewClient;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v1, v2, v0}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    .line 328
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getHtmlAdUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v3}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getHtmlCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    .line 342
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isDspFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 331
    new-instance v1, Lcom/revmob/internal/RevMobWebViewClient;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v1, v2, v0}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    .line 332
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getDspUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v3}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getDspHtml()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebview;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->getParallaxMode()Lcom/revmob/RevMobParallaxMode;

    move-result-object v0

    sget-object v1, Lcom/revmob/RevMobParallaxMode;->DEFAULT:Lcom/revmob/RevMobParallaxMode;

    if-ne v0, v1, :cond_2

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isParallaxEnabled:Z

    .line 337
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isWebview:Z

    .line 338
    new-instance v3, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {v3, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 339
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    iget-boolean v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isParallaxEnabled:Z

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getParallaxDelta()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;-><init>(Landroid/app/Activity;Lcom/revmob/ads/fullscreen/client/FullscreenData;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;ZI)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    goto :goto_0
.end method

.method public createPostRollView()Landroid/view/View;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollView:Landroid/widget/ImageView;

    .line 518
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRoll()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollView:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/FullscreenActivity$4;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$4;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public createTextViewPostRollView()Landroid/view/View;
    .locals 8

    .prologue
    .line 534
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollText()Ljava/lang/String;

    move-result-object v0

    .line 538
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    .line 539
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollRed()I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollGreen()I

    move-result v1

    .line 542
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollBlue()I

    move-result v2

    .line 543
    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v3}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollAlpha()I

    move-result v3

    .line 544
    mul-int/lit16 v3, v3, 0xff

    .line 545
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v4

    .line 546
    int-to-double v4, v4

    iget-wide v6, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 547
    iget-object v5, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 548
    iget-object v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 551
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPostRoll:Landroid/widget/TextView;

    return-object v0
.end method

.method public createTextViewPreRollView()Landroid/view/View;
    .locals 8

    .prologue
    .line 495
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollText()Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    .line 498
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollRed()I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollGreen()I

    move-result v1

    .line 501
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollBlue()I

    move-result v2

    .line 502
    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v3}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollAlpha()I

    move-result v3

    .line 503
    mul-int/lit16 v3, v3, 0xff

    .line 506
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v4

    .line 507
    int-to-double v4, v4

    iget-wide v6, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 508
    iget-object v5, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 509
    iget-object v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 512
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textPreRoll:Landroid/widget/TextView;

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->abandonAudioFocus()V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    .line 1024
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1025
    return-void
.end method

.method public finishVideo()V
    .locals 8

    .prologue
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 556
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 557
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->releaseAllResources()V

    .line 559
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isTherePostRoll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    .line 561
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 562
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 566
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    .line 567
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    .line 569
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-ge v0, v1, :cond_1

    .line 570
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    .line 575
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    iget v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 576
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 580
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    iget v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 582
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 583
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createPostRollView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createTextViewPostRollView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    :cond_0
    return-void

    .line 572
    :cond_1
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getStopPosition()I
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->stopPosition:I

    return v0
.end method

.method public initVideo()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 408
    const/4 v0, 0x0

    .line 409
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollLandscape()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollPortrait()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRoll()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 413
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isTherePostRoll:Ljava/lang/Boolean;

    .line 415
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    .line 418
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 419
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x23000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 425
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    if-ge v0, v1, :cond_3

    .line 426
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 427
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 428
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const-wide v2, 0x3fc5c28f5c28f5c3L    # 0.17

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    .line 434
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 435
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 437
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    iget v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 439
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 440
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 442
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createPreRollView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createTextViewPreRollView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->addCloseButton()V

    .line 446
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 447
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->buttonSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 448
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedPreRollDisplayed()V

    .line 453
    :goto_1
    return-void

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollWidth()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    .line 431
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollHeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollWidth:I

    .line 432
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollHeight:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->textTopMargin:I

    goto/16 :goto_0

    .line 451
    :cond_4
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createVideoView()V

    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 1038
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isRewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->shouldNotSkipVideo:Z

    if-eqz v0, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 616
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 617
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 618
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1, v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 622
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->frame:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    invoke-interface {v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenView;->update()V

    .line 627
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFullscreenPercentage()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 629
    packed-switch v0, :pswitch_data_0

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 632
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changeFullscreenImageOrientation(Z)V

    goto :goto_0

    .line 636
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changeFullscreenImageOrientation(Z)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->updatePreRoll()V

    .line 644
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 645
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changePreRollOrientation(Z)V

    goto :goto_0

    .line 647
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changePreRollOrientation(Z)V

    goto :goto_0

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->postRollView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 656
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 661
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changePostRollOrientation(Z)V

    goto :goto_0

    .line 658
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->changePostRollOrientation(Z)V

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 645
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 656
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v5, 0x400

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const/4 v0, 0x0

    .line 152
    if-eqz p1, :cond_4

    .line 153
    const-string v1, "videoPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setStopPosition(I)V

    .line 157
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0xe

    if-gt v1, v4, :cond_5

    .line 159
    invoke-virtual {p0, v8}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->requestWindowFeature(I)Z

    .line 160
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    .line 172
    :goto_1
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenWidth:I

    .line 173
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->screenHeight:I

    .line 174
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    .line 176
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 177
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentDpi:I

    .line 178
    iput-wide v2, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    .line 179
    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentDpi:I

    if-eqz v1, :cond_0

    .line 180
    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    iget v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentDpi:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->deviceDpiRatio:D

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    const-string v4, "com.revmob.ads.fullscreen.adUrl"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    const-string v5, "followAppOrientation"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->followAppOrientation:Z

    .line 186
    const-string v5, "isRewarded"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isRewarded:Ljava/lang/Boolean;

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 190
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/fullscreen/client/FullscreenData;

    .line 196
    :cond_1
    :goto_2
    if-eqz v0, :cond_d

    .line 197
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    .line 198
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getDoNotShow()Z

    move-result v0

    if-ne v0, v8, :cond_7

    .line 199
    const-string v0, "Unexpected error on create Fullscreen Ad."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    const-string v1, "Unexpected error on create Fullscreen Ad."

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_3
    :goto_3
    return-void

    .line 155
    :cond_4
    invoke-virtual {p0, v9}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setStopPosition(I)V

    goto/16 :goto_0

    .line 166
    :cond_5
    invoke-virtual {p0, v8}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->requestWindowFeature(I)Z

    .line 167
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    .line 192
    :cond_6
    if-eqz v4, :cond_1

    .line 193
    :try_start_1
    invoke-static {v4}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getLoadedFullscreen(Ljava/lang/String;)Lcom/revmob/ads/fullscreen/client/FullscreenData;

    move-result-object v0

    goto :goto_2

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFullscreenPercentage()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getFullscreenPercentage()D

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenPercentage:D

    .line 206
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPublisherListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 208
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getOrientationLock()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->orientationLock:I

    .line 209
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->orientationLock:I

    if-ne v0, v8, :cond_8

    .line 210
    iget v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->currentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 211
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 216
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 217
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createFullscreenView()V

    .line 218
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->initFullscreen()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "Unexpected error on create Fullscreen Ad."

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    const-string v1, "Unexpected error on create Fullscreen Ad."

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 252
    :cond_9
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    goto :goto_3

    :cond_a
    move-wide v0, v2

    .line 205
    goto :goto_4

    .line 213
    :cond_b
    const/4 v0, 0x7

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_5

    .line 220
    :cond_c
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$1;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 229
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->audioManager:Landroid/media/AudioManager;

    .line 230
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 231
    if-eq v0, v8, :cond_3

    .line 233
    if-nez v0, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    goto/16 :goto_3

    .line 241
    :cond_d
    const-string v0, "marketURL"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->createViewClickUrl(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->initFullscreen()V

    .line 244
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->addProgressBar()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/client/FullscreenData;)V

    .line 989
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 990
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isRewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->shouldNotSkipVideo:Z

    if-eqz v0, :cond_1

    .line 1005
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    .line 1000
    :cond_2
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setStopPosition(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isParallaxEnabled:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 275
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mOrientation:Landroid/hardware/Sensor;

    .line 276
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mOrientation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->mOrientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 284
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 285
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 289
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 290
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenActivity$2;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity$2;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1042
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1043
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_0

    .line 1044
    const-string v0, "videoPosition"

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isParallaxEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isHtmlFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isDspFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->fullscreenView:Lcom/revmob/ads/fullscreen/internal/FullscreenView;

    check-cast v0, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/fullscreen/internal/FullscreenStatic;->updateAccordingToDevicePosition(II)V

    .line 1034
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 976
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 977
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 979
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 983
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 263
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 264
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->Video:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 267
    :cond_0
    return-void
.end method

.method public removeProgressBar()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 899
    :cond_0
    return-void
.end method

.method public setStopPosition(I)V
    .locals 0

    .prologue
    .line 1066
    iput p1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->stopPosition:I

    .line 1067
    return-void
.end method

.method public updatePreRoll()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 599
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollLandscape()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->preRollView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPreRollPortrait()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
