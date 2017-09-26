.class public final Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
.super Ljava/lang/Object;
.source "SupersonicAdsPublisherAgent.java"

# interfaces
.implements Lcom/supersonicads/sdk/SSAPublisher;


# static fields
.field private static final TAG:Ljava/lang/String; = "SupersonicAdsPublisherAgent"

.field private static mutableContextWrapper:Landroid/content/MutableContextWrapper;

.field private static sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;


# instance fields
.field private session:Lcom/supersonicads/sdk/data/SSASession;

.field private wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    .line 45
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/Logger;->enableLogging(I)V

    .line 47
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    .line 50
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->startSession(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/MutableContextWrapper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    return-object v0
.end method

.method private endSession()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSASession;->endSession()V

    .line 112
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->addSession(Lcom/supersonicads/sdk/data/SSASession;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 115
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 3

    .prologue
    .line 75
    const-class v1, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .line 87
    :goto_0
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :cond_0
    :try_start_1
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->launched:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 103
    return-void
.end method


# virtual methods
.method public forceShowInterstitial()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->forceShowInterstitial()V

    .line 177
    return-void
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 149
    return-void
.end method

.method public getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 161
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 128
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isInterstitialAdAvailable()Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterBackground()V

    .line 204
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 206
    invoke-direct {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterForeground()V

    .line 190
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->resumeSession(Landroid/content/Context;)V

    .line 195
    :cond_0
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    :try_start_0
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/supersonicads/sdk/utils/DeviceProperties;->release()V

    .line 220
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->destroy()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    sput-object v2, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .line 246
    invoke-direct {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->endSession()V

    .line 247
    return-void

    .line 229
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 230
    new-instance v1, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resumeSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->backFromBG:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 107
    return-void
.end method

.method public runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V

    .line 256
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showInterstitial()V

    .line 172
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 143
    return-void
.end method

.method public showRewardedVideo()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showBrandConnect()V

    .line 133
    return-void
.end method
