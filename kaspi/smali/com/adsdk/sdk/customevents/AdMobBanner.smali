.class public Lcom/adsdk/sdk/customevents/AdMobBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "AdMobBanner.java"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/AdMobBanner;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AdMobBanner$1;-><init>(Lcom/adsdk/sdk/customevents/AdMobBanner;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 84
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 18
    .line 19
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 22
    :try_start_0
    const-string v0, "com.google.android.gms.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.google.android.gms.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const-string v0, "com.google.android.gms.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.google.android.gms.ads.AdSize"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->trackingPixel:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, p5, p6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AdMobBanner;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 40
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0
.end method
