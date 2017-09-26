.class public Lcom/adsdk/sdk/customevents/AmazonFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "AmazonFullscreen.java"


# instance fields
.field private interstitial:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AmazonFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/AmazonFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    .line 20
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 21
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->trackingPixel:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v0, "com.amazon.device.ads.Ad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.amazon.device.ads.AdError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const-string v0, "com.amazon.device.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    const-string v0, "com.amazon.device.ads.AdProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v0, "com.amazon.device.ads.AdRegistration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v0, "com.amazon.device.ads.InterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {p3}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->createListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd()Z

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->reportImpression()V

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AmazonFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 92
    :cond_0
    return-void
.end method
