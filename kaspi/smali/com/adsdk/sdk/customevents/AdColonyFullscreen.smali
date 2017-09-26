.class public Lcom/adsdk/sdk/customevents/AdColonyFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "AdColonyFullscreen.java"


# static fields
.field private static initialized:Z


# instance fields
.field private reported:Z

.field private videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Lcom/jirbo/adcolony/AdColonyVideoAd;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z

    return-void
.end method

.method private createListener()Lcom/jirbo/adcolony/AdColonyAdListener;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;-><init>(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 20
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    aget-object v1, v0, v5

    .line 22
    aget-object v2, v0, v4

    .line 23
    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 25
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 26
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->trackingPixel:Ljava/lang/String;

    .line 27
    iput-boolean v5, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z

    .line 30
    :try_start_0
    const-string v3, "com.jirbo.adcolony.AdColony"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const-string v3, "com.jirbo.adcolony.AdColonyAd"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    const-string v3, "com.jirbo.adcolony.AdColonyAdAvailabilityListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    const-string v3, "com.jirbo.adcolony.AdColonyAdListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    const-string v3, "com.jirbo.adcolony.AdColonyVideoAd"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    sget-boolean v3, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->initialized:Z

    if-nez v3, :cond_0

    .line 43
    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {p1, v1, v2, v3}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    sput-boolean v4, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->initialized:Z

    .line 47
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>()V

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->createListener()Lcom/jirbo/adcolony/AdColonyAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z

    if-nez v0, :cond_1

    .line 50
    iput-boolean v4, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z

    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v1, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)V

    .line 72
    const-wide/16 v2, 0x1388

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 106
    :cond_0
    return-void
.end method
