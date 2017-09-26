.class public Lcom/adsdk/sdk/customevents/ChartboostFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.source "ChartboostFullscreen.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private locationName:Ljava/lang/String;

.field private shouldDisplay:Z

.field private shouldReportAvailability:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    .line 15
    const-string v0, "Default"

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->locationName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldDisplay:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldDisplay:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldReportAvailability:Z

    return v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;Z)V
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldReportAvailability:Z

    return-void
.end method

.method private createListener()Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/ChartboostFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 114
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 115
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    .line 118
    invoke-super {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->finish()V

    .line 119
    return-void
.end method

.method public loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    aget-object v1, v0, v3

    .line 22
    aget-object v0, v0, v4

    .line 23
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 24
    iput-object p4, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->trackingPixel:Ljava/lang/String;

    .line 27
    :try_start_0
    const-string v2, "com.chartboost.sdk.Chartboost"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v2, "com.chartboost.sdk.ChartboostDelegate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v2, "com.chartboost.sdk.Model.CBError"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    const-string v2, "com.chartboost.sdk.CBLocation"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->activity:Landroid/app/Activity;

    .line 39
    invoke-static {p1, v1, v0}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->createListener()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 41
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 43
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 45
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 47
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 49
    iput-boolean v4, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldReportAvailability:Z

    .line 50
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->locationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->locationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->shouldDisplay:Z

    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/ChartboostFullscreen;->locationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
