.class public Lcom/adsdk/sdk/customevents/MoPubBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "MoPubBanner.java"


# instance fields
.field private banner:Lcom/mopub/mobileads/MoPubView;

.field private reportedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/MoPubBanner;)Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/MoPubBanner;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->reportedClick:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/customevents/MoPubBanner;Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->reportedClick:Z

    return-void
.end method

.method private createListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/adsdk/sdk/customevents/MoPubBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/MoPubBanner$1;-><init>(Lcom/adsdk/sdk/customevents/MoPubBanner;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 88
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 17
    .line 18
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 19
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->trackingPixel:Ljava/lang/String;

    .line 22
    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.mopub.mobileads.MoPubErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    .line 32
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/MoPubBanner;->createListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0
.end method
