.class public Lcom/mopub/nativeads/NativeFullScreenVideoView;
.super Landroid/widget/RelativeLayout;
.source "NativeFullScreenVideoView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeFullScreenVideoView$1;,
        Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;,
        Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    }
.end annotation


# instance fields
.field private final mBottomGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCachedVideoFrameView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCloseControl:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCloseControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mClosePaddingPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mCtaButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCtaHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaMarginPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaWidthPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mGradientStripHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mLoadingSpinner:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mOrientation:I

.field private final mOverlay:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlayButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPlayControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mPrivacyInformationIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPrivacyInformationIconSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mTopGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoTexture:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/TextureView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Lcom/mopub/nativeads/NativeFullScreenVideoView;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ProgressBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/mopub/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static {p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    invoke-static/range {p9 .. p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-static/range {p10 .. p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static/range {p11 .. p11}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static/range {p12 .. p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    invoke-static/range {p13 .. p13}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    invoke-static/range {p14 .. p14}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    iput p2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 104
    sget-object v2, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    iput-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 106
    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    .line 107
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    .line 108
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    .line 109
    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    .line 110
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    .line 111
    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    .line 112
    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    .line 113
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iput-object p5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 122
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setId(I)V

    .line 123
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 126
    iput-object p4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    .line 127
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 128
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 130
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 132
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iput-object p6, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 136
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setId(I)V

    .line 137
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;

    invoke-direct {v4, p1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 140
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 142
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    iput-object p7, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    .line 146
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 147
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 150
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 153
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    iput-object p8, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    .line 157
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 158
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v6, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 161
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 164
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 165
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 166
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 167
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 168
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 170
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    .line 174
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 175
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 179
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    .line 183
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 184
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    sget-object v3, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v3, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 188
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    .line 189
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 190
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v3, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 194
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 196
    new-instance v2, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v2, p3}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 200
    :cond_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    .line 201
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 202
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 205
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    .line 206
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 207
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    new-instance v3, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v3}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v6, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 209
    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 211
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    .line 212
    return-void
.end method

.method private setCachedImageVisibility(I)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    return-void
.end method

.method private setVideoProgressVisibility(I)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private updateControlLayouts()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x6

    .line 343
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 349
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 379
    :goto_0
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    return-void

    .line 355
    :pswitch_0
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 361
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 365
    :pswitch_1
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 372
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVideoTextureLayout()V
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 332
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 333
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    .line 334
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 337
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_1

    .line 338
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    :cond_1
    return-void
.end method

.method private updateViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 279
    sget-object v0, Lcom/mopub/nativeads/NativeFullScreenVideoView$1;->$SwitchMap$com$mopub$nativeads$NativeFullScreenVideoView$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateVideoTextureLayout()V

    .line 309
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateControlLayouts()V

    .line 310
    return-void

    .line 281
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 282
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 283
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 284
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 288
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 289
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 290
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 294
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 295
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 296
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 299
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 300
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 301
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 302
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getCtaButton()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    return-object v0
.end method

.method public resetProgress()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    .line 216
    return-void
.end method

.method public setCachedVideoFrame(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    return-void
.end method

.method public setCloseControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method

.method public setCtaClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    if-ne v0, p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 225
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 238
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    goto :goto_0
.end method

.method public setPlayControlClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    return-void
.end method

.method public setPrivacyInformationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 3
    .param p1    # Landroid/view/TextureView$SurfaceTextureListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 245
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 250
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 272
    return-void
.end method
