.class public Lcom/adsdk/sdk/customevents/MillennialFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "MillennialFullscreen.java"


# instance fields
.field private interstitial:Lcom/millennialmedia/android/MMInterstitial;

.field private wasTapped:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/MillennialFullscreen;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->wasTapped:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/MillennialFullscreen;Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->wasTapped:Z

    return-void
.end method

.method private createListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/MillennialFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    .line 20
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 21
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->trackingPixel:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v0, "com.millennialmedia.android.MMAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.millennialmedia.android.MMException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const-string v0, "com.millennialmedia.android.MMInterstitial"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    const-string v0, "com.millennialmedia.android.MMRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v0, "com.millennialmedia.android.RequestListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v0, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->createListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0, p3}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 104
    :cond_0
    return-void
.end method
