.class public Lcom/adsdk/sdk/customevents/VungleFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "VungleFullscreen.java"


# instance fields
.field private alreadyReportedAdLoadStatus:Z

.field private vunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/customevents/VungleFullscreen;Z)V
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z

    return-void
.end method

.method private createListener()Lcom/vungle/publisher/EventListener;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;-><init>(Lcom/adsdk/sdk/customevents/VungleFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->finish()V

    .line 110
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListener(Lcom/vungle/publisher/EventListener;)V

    .line 111
    return-void
.end method

.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 18
    .line 19
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z

    .line 21
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->trackingPixel:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v0, "com.vungle.publisher.EventListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.vungle.publisher.VunglePub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1, p3}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->createListener()Lcom/vungle/publisher/EventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListener(Lcom/vungle/publisher/EventListener;)V

    .line 35
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isCachedAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 41
    new-instance v1, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/VungleFullscreen;)V

    .line 58
    const-wide/16 v2, 0x1388

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isCachedAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 119
    :cond_0
    return-void
.end method
