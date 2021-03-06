.class public Lcom/mopub/nativeads/MediaLayout;
.super Landroid/widget/RelativeLayout;
.source "MediaLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MediaLayout$2;,
        Lcom/mopub/nativeads/MediaLayout$MuteState;,
        Lcom/mopub/nativeads/MediaLayout$Mode;
    }
.end annotation


# static fields
.field private static final ASPECT_MULTIPLIER_HEIGHT_TO_WIDTH:F = 1.7777778f

.field private static final ASPECT_MULTIPLIER_WIDTH_TO_HEIGHT:F = 0.5625f

.field private static final CONTROL_SIZE_DIPS:I = 0x28

.field private static final GRADIENT_STRIP_HEIGHT_DIPS:I = 0x23

.field private static final MUTE_SIZE_DIPS:I = 0x24

.field private static final PINNER_PADDING_DIPS:I = 0xa


# instance fields
.field private mBottomGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mControlSizePx:I

.field private final mGradientStripHeightPx:I

.field private mIsInitialized:Z

.field private mLoadingSpinner:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMainImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile mMode:Lcom/mopub/nativeads/MediaLayout$Mode;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMuteControl:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMuteSizePx:I

.field private mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMutedDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOverlay:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPaddingPx:I

.field private mPlayButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTopGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUnmutedDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    .line 77
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$MuteState;->MUTED:Lcom/mopub/nativeads/MediaLayout$MuteState;

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 89
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    .line 90
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    .line 91
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteSizePx:I

    .line 92
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MediaLayout;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/nativeads/MediaLayout;->updateViewState()V

    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :cond_1
    return-void
.end method

.method private setMainImageVisibility(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_0
    return-void
.end method

.method private setVideoControlVisibility(I)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_2
    return-void
.end method

.method private updateViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 320
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$2;->$SwitchMap$com$mopub$nativeads$MediaLayout$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MediaLayout$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 322
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 323
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 324
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 325
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 329
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 330
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 331
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 335
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 336
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 337
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    .line 339
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 340
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 341
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 342
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 345
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 346
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 347
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 348
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 351
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 352
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 353
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 354
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getMainImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public initForVideo()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 111
    iget-boolean v0, p0, Lcom/mopub/nativeads/MediaLayout;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    .line 120
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setId(I)V

    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    iget v2, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 131
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    iget v2, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    invoke-virtual {v0, v6, v1, v2, v6}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 133
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 134
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    sget v3, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v3, v2, v6

    sget v3, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 144
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    .line 151
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    sget v3, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v3, v2, v6

    sget v3, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 155
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 160
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v6}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 161
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 163
    sget-object v0, Lcom/mopub/common/util/Drawables;->NATIVE_MUTED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    sget-object v0, Lcom/mopub/common/util/Drawables;->NATIVE_UNMUTED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mUnmutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteSizePx:I

    iget v2, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteSizePx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    .line 169
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    iget v2, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    iget v3, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    iget v4, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 172
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    iget v2, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    .line 186
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 190
    iput-boolean v7, p0, Lcom/mopub/nativeads/MediaLayout;->mIsInitialized:Z

    .line 191
    invoke-direct {p0}, Lcom/mopub/nativeads/MediaLayout;->updateViewState()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x2

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 207
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getMeasuredWidth()I

    move-result v3

    .line 213
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getMeasuredHeight()I

    move-result v5

    .line 216
    if-ne v1, v8, :cond_2

    .line 227
    :goto_0
    const/high16 v1, 0x3f100000    # 0.5625f

    int-to-float v6, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 230
    if-ne v4, v8, :cond_4

    if-ge v0, v1, :cond_4

    .line 232
    const v1, 0x3fe38e39

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 235
    :goto_1
    sub-int v2, v0, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v7, :cond_0

    sub-int v2, v1, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v7, :cond_1

    .line 237
    :cond_0
    const-string v2, "Resetting mediaLayout size to w: %d h: %d"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 243
    return-void

    .line 218
    :cond_2
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_3

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 223
    goto :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    .line 199
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMuteControlClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setVideoClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method public resetProgress()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    .line 254
    :cond_0
    return-void
.end method

.method public setMainImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/MediaLayout$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    iput-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    .line 269
    new-instance v0, Lcom/mopub/nativeads/MediaLayout$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MediaLayout$1;-><init>(Lcom/mopub/nativeads/MediaLayout;)V

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method public setMuteControlClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_0
    return-void
.end method

.method public setMuteState(Lcom/mopub/nativeads/MediaLayout$MuteState;)V
    .locals 2
    .param p1    # Lcom/mopub/nativeads/MediaLayout$MuteState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 302
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    if-ne p1, v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    .line 307
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$2;->$SwitchMap$com$mopub$nativeads$MediaLayout$MuteState:[I

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MediaLayout$MuteState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mUnmutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 3
    .param p1    # Landroid/view/TextureView$SurfaceTextureListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 99
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 104
    :cond_0
    return-void
.end method

.method public setVideoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 260
    :cond_0
    return-void
.end method
