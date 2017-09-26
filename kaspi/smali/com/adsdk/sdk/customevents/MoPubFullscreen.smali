.class public Lcom/adsdk/sdk/customevents/MoPubFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "MoPubFullscreen.java"


# instance fields
.field private interstitial:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/MoPubFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/MoPubFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->finish()V

    .line 89
    return-void
.end method

.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    .line 16
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 17
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->trackingPixel:Ljava/lang/String;

    .line 20
    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    const-string v0, "com.mopub.mobileads.MoPubInterstitial"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v0, p1, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 30
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 81
    :cond_0
    return-void
.end method
