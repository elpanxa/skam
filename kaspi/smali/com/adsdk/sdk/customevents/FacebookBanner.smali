.class public Lcom/adsdk/sdk/customevents/FacebookBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "FacebookBanner.java"


# instance fields
.field private banner:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/FacebookBanner;)Lcom/facebook/ads/AdView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method private createListener()Lcom/facebook/ads/AdListener;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/adsdk/sdk/customevents/FacebookBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/FacebookBanner$1;-><init>(Lcom/adsdk/sdk/customevents/FacebookBanner;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 74
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 17
    .line 18
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 19
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->trackingPixel:Ljava/lang/String;

    .line 22
    :try_start_0
    const-string v0, "com.facebook.ads.Ad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.facebook.ads.AdError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const-string v0, "com.facebook.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.facebook.ads.AdSize"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const-string v0, "com.facebook.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    new-instance v0, Lcom/facebook/ads/AdView;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, p3, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/FacebookBanner;->createListener()Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->banner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0
.end method
