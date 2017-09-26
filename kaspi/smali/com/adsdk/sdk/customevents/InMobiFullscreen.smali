.class public Lcom/adsdk/sdk/customevents/InMobiFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "InMobiFullscreen.java"


# static fields
.field private static isInitialized:Z


# instance fields
.field private interstitial:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createListener()Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/InMobiFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/InMobiFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 20
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->trackingPixel:Ljava/lang/String;

    .line 23
    :try_start_0
    const-string v0, "com.inmobi.commons.InMobi"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const-string v0, "com.inmobi.monetization.IMErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    const-string v0, "com.inmobi.monetization.IMInterstitial"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const-string v0, "com.inmobi.monetization.IMInterstitialListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    sget-boolean v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->isInitialized:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {p1, p3}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->isInitialized:Z

    .line 37
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {v0, p1, p3}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->createListener()Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 92
    :cond_0
    return-void
.end method
