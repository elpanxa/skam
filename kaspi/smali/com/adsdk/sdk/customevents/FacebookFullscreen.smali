.class public Lcom/adsdk/sdk/customevents/FacebookFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "FacebookFullscreen.java"


# instance fields
.field private interstitial:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createListener()Lcom/facebook/ads/InterstitialAdListener;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/FacebookFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/FacebookFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    .line 18
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 19
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->trackingPixel:Ljava/lang/String;

    .line 22
    :try_start_0
    const-string v0, "com.facebook.ads.Ad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.facebook.ads.AdError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const-string v0, "com.facebook.ads.InterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.facebook.ads.InterstitialAdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->createListener()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 86
    :cond_0
    return-void
.end method
