.class public Lcom/adsdk/sdk/mraid/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710

.field private static sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoRefreshEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mIsFacebookSupported:Z

.field private mIsLoading:Z

.field private mIsTesting:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 64
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mAutoRefreshEnabled:Z

    .line 67
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsFacebookSupported:Z

    .line 50
    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 225
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 231
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 230
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/adsdk/sdk/mraid/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdViewController;->setAutorefreshEnabled(Z)V

    .line 175
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->cancelRefreshTimer()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsDestroyed:Z

    goto :goto_0
.end method

.method public customEventActionWillBegin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->registerClick()V

    .line 245
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->setNotLoading()V

    .line 238
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->trackImpression()V

    .line 239
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 240
    return-void
.end method

.method fetchAd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method forceRefresh()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->setNotLoading()V

    .line 199
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->loadAd()V

    .line 200
    return-void
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mAutoRefreshEnabled:Z

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getLocalExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocalExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 213
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsTesting:Z

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsDestroyed:Z

    return v0
.end method

.method public isFacebookSupported()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsFacebookSupported:Z

    return v0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "MoPub"

    const-string v1, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 83
    :cond_0
    return-void
.end method

.method loadNonJavascript(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mUrl:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsLoading:Z

    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdViewController;->fetchAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerClick()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 100
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reload ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method scheduleRefreshTimerIfEnabled()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 1

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mAutoRefreshEnabled:Z

    .line 146
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdViewController;->cancelRefreshTimer()V

    goto :goto_0
.end method

.method public setFacebookSupported(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsFacebookSupported:Z

    .line 126
    return-void
.end method

.method setFailUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mKeywords:Ljava/lang/String;

    .line 118
    return-void
.end method

.method setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 207
    :goto_0
    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 210
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mLocation:Landroid/location/Location;

    .line 134
    return-void
.end method

.method setNotLoading()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsLoading:Z

    .line 110
    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdViewController;->mIsTesting:Z

    .line 159
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method trackImpression()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
