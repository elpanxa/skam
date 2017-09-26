.class public Lcom/adsdk/sdk/customevents/FlurryFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "FlurryFullscreen.java"

# interfaces
.implements Lcom/flurry/android/FlurryAdListener;


# instance fields
.field private adSpace:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private layout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->layout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 57
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->finish()V

    .line 58
    return-void
.end method

.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 21
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    .line 29
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    .line 30
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 32
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->trackingPixel:Ljava/lang/String;

    .line 35
    :try_start_0
    const-string v1, "com.flurry.android.FlurryAdListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    const-string v1, "com.flurry.android.FlurryAdSize"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    const-string v1, "com.flurry.android.FlurryAdType"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    const-string v1, "com.flurry.android.FlurryAds"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    const-string v1, "com.flurry.android.FlurryAgent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->layout:Landroid/widget/FrameLayout;

    .line 47
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->layout:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 74
    :cond_0
    return-void
.end method

.method public onAdOpened(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->reportImpression()V

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 84
    :cond_0
    return-void
.end method

.method public onApplicationExit(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 91
    :cond_0
    return-void
.end method

.method public onRenderFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onRendered(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public showFullscreen()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->layout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 63
    return-void
.end method

.method public spaceDidFailToReceiveAd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 115
    :cond_0
    return-void
.end method

.method public spaceDidReceiveAd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->adSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FlurryFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 122
    :cond_0
    return-void
.end method
