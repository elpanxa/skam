.class public Lcom/adsdk/sdk/customevents/ApplifierFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "ApplifierFullscreen.java"


# static fields
.field private static initialized:Z


# instance fields
.field private shouldReportAvailability:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/ApplifierFullscreen;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z

    return v0
.end method

.method private createListener()Lcom/unity3d/ads/android/IUnityAdsListener;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/ApplifierFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 16
    iput-boolean v2, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z

    .line 17
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->trackingPixel:Ljava/lang/String;

    .line 20
    :try_start_0
    const-string v0, "com.unity3d.ads.android.IUnityAdsListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    const-string v0, "com.unity3d.ads.android.UnityAds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    sget-boolean v0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->initialized:Z

    if-nez v0, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->createListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 31
    sput-boolean v2, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->initialized:Z

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iput-boolean v1, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->createListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setListener(Lcom/unity3d/ads/android/IUnityAdsListener;)V

    goto :goto_0

    .line 39
    :cond_3
    iput-boolean v1, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->shouldReportAvailability:Z

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ApplifierFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->show()Z

    .line 96
    :cond_0
    return-void
.end method
