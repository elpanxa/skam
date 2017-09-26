.class public Lcom/adsdk/sdk/customevents/AdMobFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "AdMobFullscreen.java"


# instance fields
.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/AdMobFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    .line 17
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 18
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->trackingPixel:Ljava/lang/String;

    .line 21
    :try_start_0
    const-string v0, "com.google.android.gms.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    const-string v0, "com.google.android.gms.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->adListener:Lcom/google/android/gms/ads/AdListener;

    .line 32
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 35
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 85
    :cond_0
    return-void
.end method
