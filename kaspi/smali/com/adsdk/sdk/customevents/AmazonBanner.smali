.class public Lcom/adsdk/sdk/customevents/AmazonBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "AmazonBanner.java"


# instance fields
.field private banner:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/AmazonBanner;)Lcom/amazon/device/ads/AdLayout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method private createListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/adsdk/sdk/customevents/AmazonBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AmazonBanner$1;-><init>(Lcom/adsdk/sdk/customevents/AmazonBanner;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 100
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 22
    .line 23
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 24
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->trackingPixel:Ljava/lang/String;

    .line 27
    :try_start_0
    const-string v0, "com.amazon.device.ads.Ad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v0, "com.amazon.device.ads.AdError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v0, "com.amazon.device.ads.AdLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    const-string v0, "com.amazon.device.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const-string v0, "com.amazon.device.ads.AdProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    const-string v0, "com.amazon.device.ads.AdRegistration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    const-string v0, "com.amazon.device.ads.AdSize"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p3}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 48
    check-cast p1, Landroid/app/Activity;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, p5, p6}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    .line 50
    new-instance v1, Lcom/amazon/device/ads/AdLayout;

    invoke-direct {v1, p1, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AmazonBanner;->createListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->loadAd()Z

    goto :goto_0
.end method
