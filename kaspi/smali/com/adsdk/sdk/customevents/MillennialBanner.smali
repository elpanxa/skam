.class public Lcom/adsdk/sdk/customevents/MillennialBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "MillennialBanner.java"


# instance fields
.field private millenialAdView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method private createAdListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/adsdk/sdk/customevents/MillennialBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/MillennialBanner$1;-><init>(Lcom/adsdk/sdk/customevents/MillennialBanner;)V

    return-object v0
.end method


# virtual methods
.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 19
    .line 20
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 21
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->trackingPixel:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v0, "com.millennialmedia.android.MMAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.millennialmedia.android.MMAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const-string v0, "com.millennialmedia.android.MMException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    const-string v0, "com.millennialmedia.android.MMRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v0, "com.millennialmedia.android.MMSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v0, "com.millennialmedia.android.RequestListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p5}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p6}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p3}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/MillennialBanner;->createAdListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->millenialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0
.end method
