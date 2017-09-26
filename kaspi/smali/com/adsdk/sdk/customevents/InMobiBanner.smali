.class public Lcom/adsdk/sdk/customevents/InMobiBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "InMobiBanner.java"


# static fields
.field private static isInitialized:Z


# instance fields
.field private banner:Lcom/inmobi/monetization/IMBanner;

.field private bannerLayout:Landroid/widget/FrameLayout;

.field private reportedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/InMobiBanner;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->reportedClick:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/InMobiBanner;Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->reportedClick:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/customevents/InMobiBanner;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private createListener()Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/adsdk/sdk/customevents/InMobiBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/InMobiBanner$1;-><init>(Lcom/adsdk/sdk/customevents/InMobiBanner;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 123
    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    .line 126
    :cond_0
    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 127
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 128
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 24
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 25
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->trackingPixel:Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v0, "com.inmobi.commons.InMobi"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v0, "com.inmobi.monetization.IMBanner"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    const-string v0, "com.inmobi.monetization.IMBannerListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const-string v0, "com.inmobi.monetization.IMErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    .line 47
    sget-boolean v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->isInitialized:Z

    if-nez v0, :cond_2

    .line 48
    invoke-static {p1, p3}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/customevents/InMobiBanner;->isInitialized:Z

    .line 51
    :cond_2
    const/16 v0, 0x2d8

    if-lt p5, v0, :cond_3

    const/16 v0, 0x5a

    if-lt p6, v0, :cond_3

    .line 52
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-direct {v1, v0, p3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/InMobiBanner;->createListener()Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 64
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->bannerLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v4, p5

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, p6

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    goto :goto_0

    .line 53
    :cond_3
    const/16 v0, 0x12c

    if-lt p5, v0, :cond_4

    const/16 v0, 0xfa

    if-lt p6, v0, :cond_4

    .line 54
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-direct {v1, v0, p3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1

    .line 55
    :cond_4
    const/16 v0, 0x1d4

    if-lt p5, v0, :cond_5

    const/16 v0, 0x3c

    if-lt p6, v0, :cond_5

    .line 56
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-direct {v1, v0, p3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1

    .line 58
    :cond_5
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0xf

    invoke-direct {v1, v0, p3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1
.end method
