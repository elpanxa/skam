.class public Lcom/adsdk/sdk/customevents/MoPubNative;
.super Lcom/adsdk/sdk/customevents/CustomEventNative;
.source "MoPubNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventNative;-><init>()V

    return-void
.end method

.method private createMoPubNativeListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/adsdk/sdk/customevents/MoPubNative$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;-><init>(Lcom/adsdk/sdk/customevents/MoPubNative;)V

    return-object v0
.end method


# virtual methods
.method public createNativeAd(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    .line 21
    :try_start_0
    const-string v0, "com.mopub.nativeads.MoPubNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    const-string v0, "com.mopub.nativeads.NativeErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    const-string v0, "com.mopub.nativeads.NativeResponse"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {p0, p4}, Lcom/adsdk/sdk/customevents/MoPubNative;->addImpressionTracker(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/MoPubNative;->createMoPubNativeListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {v1, p1, p3, v0}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;)V

    .line 35
    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubNative;->makeRequest()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_0
.end method
