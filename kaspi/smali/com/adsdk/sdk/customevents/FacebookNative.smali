.class public Lcom/adsdk/sdk/customevents/FacebookNative;
.super Lcom/adsdk/sdk/customevents/CustomEventNative;
.source "FacebookNative.java"


# instance fields
.field private facebookNative:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventNative;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/FacebookNative;Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/customevents/FacebookNative;->readRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createListener()Lcom/facebook/ads/AdListener;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/adsdk/sdk/customevents/FacebookNative$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;-><init>(Lcom/adsdk/sdk/customevents/FacebookNative;)V

    return-object v0
.end method

.method private readRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createNativeAd(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    .line 21
    :try_start_0
    const-string v0, "com.facebook.ads.Ad"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    const-string v0, "com.facebook.ads.AdError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.facebook.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const-string v0, "com.facebook.ads.NativeAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-virtual {p0, p4}, Lcom/adsdk/sdk/customevents/FacebookNative;->addImpressionTracker(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/FacebookNative;->createListener()Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p2}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_0
.end method

.method public prepareImpression(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 102
    return-void
.end method
