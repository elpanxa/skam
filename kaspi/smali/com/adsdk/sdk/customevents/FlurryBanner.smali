.class public Lcom/adsdk/sdk/customevents/FlurryBanner;
.super Lcom/adsdk/sdk/customevents/CustomEventBanner;
.source "FlurryBanner.java"

# interfaces
.implements Lcom/flurry/android/FlurryAdListener;


# instance fields
.field private adSpace:Ljava/lang/String;

.field private bannerLayout:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->bannerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 63
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 64
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/FlurryBanner;->destroy()V

    .line 55
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->finalize()V

    .line 56
    return-void
.end method

.method public loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 20
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 22
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->context:Landroid/content/Context;

    .line 28
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    .line 29
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 30
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 31
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->trackingPixel:Ljava/lang/String;

    .line 34
    :try_start_0
    const-string v1, "com.flurry.android.FlurryAdListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    const-string v1, "com.flurry.android.FlurryAdSize"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    const-string v1, "com.flurry.android.FlurryAdType"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    const-string v1, "com.flurry.android.FlurryAds"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    const-string v1, "com.flurry.android.FlurryAgent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->bannerLayout:Landroid/widget/FrameLayout;

    .line 48
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->bannerLayout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-static {p1, v0, v1, v2}, Lcom/flurry/android/FlurryAds;->fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    goto :goto_0
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    .line 75
    :cond_0
    return-void
.end method

.method public onAdOpened(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 82
    :cond_0
    return-void
.end method

.method public onApplicationExit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onRenderFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onRendered(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public spaceDidFailToReceiveAd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 110
    :cond_0
    return-void
.end method

.method public spaceDidReceiveAd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/FlurryBanner;->reportImpression()V

    .line 116
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->adSpace:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->bannerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 117
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryBanner;->bannerLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 121
    :cond_0
    return-void
.end method
