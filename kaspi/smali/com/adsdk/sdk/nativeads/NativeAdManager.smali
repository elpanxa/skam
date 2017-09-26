.class public Lcom/adsdk/sdk/nativeads/NativeAdManager;
.super Ljava/lang/Object;
.source "NativeAdManager.java"


# instance fields
.field private adTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private includeLocation:Z

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

.field private publisherId:Ljava/lang/String;

.field private request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

.field private requestUrl:Ljava/lang/String;

.field private userAge:I

.field private userGender:Lcom/adsdk/sdk/Gender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAdListener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/adsdk/sdk/nativeads/NativeAdListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 39
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    const-string v0, "Publisher Id cannot be null or empty"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestUrl:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    .line 46
    iput-object p4, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->publisherId:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    .line 48
    iput-object p6, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    .line 50
    invoke-static {p1}, Lcom/adsdk/sdk/Util;->prepareAndroidAdId(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getRequest()Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getAndroidAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAndroidAdId(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->hasAdDoNotTrack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAdDoNotTrack(Z)V

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 88
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebKit UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAdTypes(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userAge:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAge(I)V

    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAdTypes(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setKeywords(Ljava/util/List;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    iget-boolean v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 99
    :cond_1
    if-eqz v0, :cond_2

    .line 100
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLatitude(D)V

    .line 102
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLongitude(D)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    return-object v0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0, v4, v5}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLatitude(D)V

    .line 105
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0, v4, v5}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLongitude(D)V

    goto :goto_0
.end method


# virtual methods
.method public getNativeAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)Lcom/adsdk/sdk/nativeads/NativeAdView;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/adsdk/sdk/nativeads/NativeAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;Lcom/adsdk/sdk/nativeads/NativeAdListener;)V

    .line 112
    return-object v0
.end method

.method public requestAd()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->getRequest()Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$2;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 77
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 78
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->keywords:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userAge:I

    .line 121
    return-void
.end method

.method public setUserGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userGender:Lcom/adsdk/sdk/Gender;

    .line 117
    return-void
.end method
