.class public Lcom/revmob/ads/banner/RevMobBanner;
.super Landroid/widget/RelativeLayout;
.source "RevMobBanner.java"

# interfaces
.implements Lcom/revmob/ads/internal/Ad;


# static fields
.field public static final DEFAULT_HEIGHT_IN_DIP:I = 0x32

.field public static DEFAULT_WIDTH_IN_DIP:I = 0x0

.field public static final MAXIMUM_HEIGHT_IN_DIP:I = 0x3c

.field public static final MINIMUM_HEIGHT_IN_DIP:I = 0x28

.field public static bannerCount:I

.field public static isBannerImpression:Z

.field public static usedCampaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Landroid/view/View;

.field private adView2:Landroid/view/View;

.field public changedBannerParams:Z

.field private containerTooSmall:Z

.field private customHeight:I

.field private customWidth:I

.field private data:Lcom/revmob/ads/banner/client/BannerData;

.field private height:I

.field private metrics:Landroid/util/DisplayMetrics;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private placementId:Ljava/lang/String;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private state:Lcom/revmob/ads/internal/AdState;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x140

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->containerTooSmall:Z

    .line 58
    sget v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->width:I

    .line 59
    const/16 v0, 0x32

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    .line 61
    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customWidth:I

    .line 62
    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customHeight:I

    .line 64
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->metrics:Landroid/util/DisplayMetrics;

    .line 68
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 70
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    .line 71
    sput-boolean v1, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/internal/AdState;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/banner/RevMobBanner;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/client/BannerData;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/revmob/ads/banner/RevMobBanner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->removeAdViewBlock()V

    return-void
.end method

.method static synthetic access$900(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->removeAdView2Block()V

    return-void
.end method

.method private addDSPAdView(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    const-string v0, "dspadview"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/revmob/internal/RevMobWebViewClient;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    new-instance v2, Lcom/revmob/ads/banner/RevMobBanner$5;

    invoke-direct {v2, p0, p1}, Lcom/revmob/ads/banner/RevMobBanner$5;-><init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V

    invoke-direct {v0, v1, v2}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    .line 246
    if-eqz p1, :cond_0

    .line 247
    new-instance v1, Lcom/revmob/internal/RevMobWebView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getDspUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v4}, Lcom/revmob/ads/banner/client/BannerData;->getDspHtml()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/revmob/internal/RevMobWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    :goto_0
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView(Z)V

    .line 254
    return-void

    .line 250
    :cond_0
    new-instance v1, Lcom/revmob/internal/RevMobWebView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getDspUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v4}, Lcom/revmob/ads/banner/client/BannerData;->getDspHtml()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/revmob/internal/RevMobWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private addHtmlAdView(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 199
    const-string v0, "html adview"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/revmob/internal/RevMobWebViewClient;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    new-instance v2, Lcom/revmob/ads/banner/RevMobBanner$4;

    invoke-direct {v2, p0, p1}, Lcom/revmob/ads/banner/RevMobBanner$4;-><init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V

    invoke-direct {v0, v1, v2}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    .line 217
    if-eqz p1, :cond_0

    .line 218
    new-instance v1, Lcom/revmob/internal/RevMobWebView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getHtmlAdUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/revmob/internal/RevMobWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 225
    :goto_0
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView(Z)V

    .line 226
    return-void

    .line 221
    :cond_0
    new-instance v1, Lcom/revmob/internal/RevMobWebView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getHtmlAdUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/revmob/internal/RevMobWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private addImageView(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    const-string v0, "banner imageview"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 258
    if-eqz p1, :cond_1

    .line 259
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getDrawable()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :goto_0
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView(Z)V

    .line 278
    return-void

    .line 267
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getDrawable()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private calculateDimensions()V
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/4 v6, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 335
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 336
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 337
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 339
    if-ge v2, v3, :cond_6

    .line 340
    int-to-float v1, v2

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    sput v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    .line 345
    :goto_0
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->dipToPixels(I)I

    move-result v1

    .line 347
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lcom/revmob/ads/banner/RevMobBanner;->dipToPixels(I)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 349
    iput-boolean v6, p0, Lcom/revmob/ads/banner/RevMobBanner;->containerTooSmall:Z

    .line 350
    const-string v4, "The container height must be at least 40dp"

    invoke-static {v4}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 354
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    .line 356
    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    sget v4, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    mul-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x32

    .line 358
    if-ge v1, v2, :cond_2

    if-lt v1, v3, :cond_3

    .line 359
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 360
    mul-int/lit8 v1, v2, 0x32

    sget v3, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    div-int/2addr v1, v3

    invoke-virtual {p0, v7}, Lcom/revmob/ads/banner/RevMobBanner;->dipToPixels(I)I

    move-result v3

    if-le v1, v3, :cond_7

    invoke-virtual {p0, v7}, Lcom/revmob/ads/banner/RevMobBanner;->dipToPixels(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    move v1, v2

    .line 363
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->width:I

    .line 364
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    mul-int/lit8 v2, v2, 0x28

    div-int/lit8 v2, v2, 0x32

    if-lt v1, v2, :cond_8

    .line 367
    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 368
    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->width:I

    mul-int/lit8 v0, v0, 0x32

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    .line 378
    :cond_5
    :goto_2
    return-void

    .line 342
    :cond_6
    int-to-float v1, v3

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    sput v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    goto/16 :goto_0

    .line 360
    :cond_7
    mul-int/lit8 v1, v2, 0x32

    sget v3, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    div-int/2addr v1, v3

    goto :goto_1

    .line 372
    :cond_8
    iput-boolean v6, p0, Lcom/revmob/ads/banner/RevMobBanner;->containerTooSmall:Z

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The container width must be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    mul-int/lit8 v1, v1, 0x28

    div-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private configureAndAnimateView(Z)V
    .locals 6

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->calculateDimensions()V

    .line 282
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->containerTooSmall:Z

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->customWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->width:I

    :goto_1
    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customHeight:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->height:I

    :goto_2
    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->getRefreshTime()I

    move-result v0

    if-lez v0, :cond_3

    .line 290
    new-instance v0, Lcom/revmob/ads/internal/ShowAnimationConfiguration;

    invoke-direct {v0}, Lcom/revmob/ads/internal/ShowAnimationConfiguration;-><init>()V

    .line 291
    const-string v1, "slide_up"

    invoke-virtual {v0, v1}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V

    .line 292
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 293
    invoke-virtual {v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 298
    :goto_3
    if-eqz p1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->addView(Landroid/view/View;)V

    .line 308
    :goto_4
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->playSoundOnShow()V

    .line 309
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->reportShowOrHidden()V

    goto :goto_0

    .line 286
    :cond_1
    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->customWidth:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customHeight:I

    goto :goto_2

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private isLoaded()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/revmob/ads/banner/RevMobBanner$1;

    invoke-direct {v0, p0}, Lcom/revmob/ads/banner/RevMobBanner$1;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    .line 91
    return-object v0
.end method

.method private playSoundOnShow()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Lcom/revmob/internal/RevMobSoundPlayer;

    invoke-direct {v0}, Lcom/revmob/internal/RevMobSoundPlayer;-><init>()V

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v2}, Lcom/revmob/ads/banner/client/BannerData;->getShowSoundURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/RevMobSoundPlayer;->playBannerSound(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeAdView2Block()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    new-instance v1, Lcom/revmob/ads/banner/RevMobBanner$8;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/RevMobBanner$8;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    .line 473
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    return-void
.end method

.method private removeAdViewBlock()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 448
    new-instance v1, Lcom/revmob/ads/banner/RevMobBanner$7;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/RevMobBanner$7;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    .line 457
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    :cond_0
    return-void
.end method

.method public static setBannerImpression(Z)V
    .locals 0

    .prologue
    .line 100
    sput-boolean p0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    .line 101
    return-void
.end method


# virtual methods
.method public addAdView(Z)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->isHtmlBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->addHtmlAdView(Z)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->isDspBanner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->addDSPAdView(Z)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->addImageView(Z)V

    goto :goto_0
.end method

.method public dipToPixels(I)I
    .locals 2

    .prologue
    .line 329
    int-to-float v0, p1

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    sput v1, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    .line 383
    const/4 v0, 0x0

    sput-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    .line 384
    invoke-virtual {p0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->hide(Z)V

    .line 385
    return-void
.end method

.method public hide(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    .line 391
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v0, v1

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getRefreshTime()I

    move-result v3

    if-nez v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/client/BannerData;->getCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 406
    :goto_1
    new-instance v4, Lcom/revmob/ads/banner/RevMobBanner$6;

    invoke-direct {v4, p0, v0, p1}, Lcom/revmob/ads/banner/RevMobBanner$6;-><init>(Lcom/revmob/ads/banner/RevMobBanner;ZZ)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 431
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, v2}, Lcom/revmob/ads/banner/RevMobBanner;->addAdView(Z)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 394
    goto :goto_0

    .line 400
    :cond_3
    new-instance v3, Lcom/revmob/ads/internal/CloseAnimationConfiguration;

    invoke-direct {v3}, Lcom/revmob/ads/internal/CloseAnimationConfiguration;-><init>()V

    .line 401
    const-string v4, "slide_up"

    invoke-virtual {v3, v4}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V

    .line 402
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 403
    invoke-virtual {v3}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_1

    .line 436
    :cond_4
    if-eqz p1, :cond_1

    .line 437
    invoke-virtual {p0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->addAdView(Z)V

    .line 438
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public load()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->placementId:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLICKED:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_1

    .line 124
    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Banner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/ads/banner/client/BannerClientListener;

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v2, p0, v3}, Lcom/revmob/ads/banner/client/BannerClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/revmob/client/RevMobClient;->fetchBanner(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 129
    :cond_1
    return-void

    .line 124
    :cond_2
    const-string v0, "Loading Banner"

    goto :goto_0
.end method

.method public reportShowOrHidden()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_3

    .line 482
    sget-object v0, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    .line 483
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    .line 487
    :cond_0
    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    .line 491
    :cond_1
    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_2
    sget v0, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    .line 495
    const/4 v0, 0x1

    sput-boolean v0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    .line 496
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->reportImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    :goto_0
    return-void

    .line 499
    :cond_4
    sget-object v0, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    goto :goto_0
.end method

.method public setChangeBannerParams(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->changedBannerParams:Z

    .line 96
    return-void
.end method

.method public setCustomSize(II)V
    .locals 3

    .prologue
    .line 313
    iput p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customWidth:I

    .line 314
    iput p2, p0, Lcom/revmob/ads/banner/RevMobBanner;->customHeight:I

    .line 319
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->customWidth:I

    iget v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->customHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 320
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/AdData;)V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_1

    .line 137
    const-string v0, "state == hidden"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;

    .line 141
    check-cast p1, Lcom/revmob/ads/banner/client/BannerData;

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner loaded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;

    .line 147
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/banner/RevMobBanner$2;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/RevMobBanner$2;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/client/BannerData;->getRefreshTime()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    new-instance v2, Lcom/revmob/ads/banner/RevMobBanner$3;

    invoke-direct {v2, p0, v0}, Lcom/revmob/ads/banner/RevMobBanner$3;-><init>(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/ViewParent;)V

    .line 180
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/client/BannerData;->getRefreshTime()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
