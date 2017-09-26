.class public Lcom/revmob/client/RevMobClient;
.super Ljava/lang/Object;
.source "RevMobClient.java"


# static fields
.field private static final ADS_PATH:Ljava/lang/String; = "/api/v4/mobile_apps/%s/%s/fetch_only.json"

.field private static final BAD_RESPONSE_MESSAGE:Ljava/lang/String; = "Bad response from server."

.field private static final DEFAULT_DOWNLOAD_ERROR_MESSAGE:Ljava/lang/String; = "RevMob did not answered as expected."

.field private static final DEFAULT_TIMEOUT:I = 0x1e

.field private static final INSTALL_URL:Ljava/lang/String; = "/api/v4/mobile_apps/%s/install.json"

.field private static final INVALID_APP_ID:Ljava/lang/String; = "Invalid App ID."

.field private static final INVALID_TIMEOUT:Ljava/lang/String; = "Invalid timeout."

.field private static final LOG_MESSAGES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_MEMORY_MESSAGE:Ljava/lang/String; = "It was not possible to load the RevMob banner because your device run out of RAM memory."

.field private static final ONE_APP_ID_PER_APP:Ljava/lang/String; = "You can use just one App Id per application."

.field private static final PARSE_ERROR_MESSAGE:Ljava/lang/String; = "Error on parse response from server."

.field private static final PARSE_ERROR_MESSAGE2:Ljava/lang/String; = "Error on parse response from server. Unknown error."

.field private static final PLACEMENT_ADS_PATH:Ljava/lang/String; = "/api/v4/mobile_apps/%s/placements/%s/%s/fetch_only.json"

.field private static PRODUCTION_SERVER_ADDRESS:Ljava/lang/String; = null

.field public static SDK_NAME:Ljava/lang/String; = null

.field public static SDK_SOURCE_NAME:Ljava/lang/String; = null

.field public static SDK_SOURCE_VERSION:Ljava/lang/String; = null

.field public static SDK_VERSION:Ljava/lang/String; = null

.field private static final SESSIONS_PATH:Ljava/lang/String; = "/api/v4/mobile_apps/%s/sessions.json"

.field public static final SESSION_WARNING:Ljava/lang/String; = "Call RevMobAds.start(activity, APP_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

.field private static instance:Lcom/revmob/client/RevMobClient;

.field private static final serverEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static t0:J

.field public static t1:J

.field public static t2:J

.field public static t3:J


# instance fields
.field private appId:Ljava/lang/String;

.field private parallaxMode:Lcom/revmob/RevMobParallaxMode;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private reportingImpression:Z

.field private requestInstalledApps:Z

.field private requestIsStartSession:Z

.field private sessionStarted:Z

.field private testingMode:Lcom/revmob/RevMobTestingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "https://android.revmob.com"

    sput-object v0, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    .line 44
    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_NAME:Ljava/lang/String;

    .line 45
    const-string v0, "9.0.1"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_VERSION:Ljava/lang/String;

    .line 47
    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_SOURCE_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "9.0.1"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_SOURCE_VERSION:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string v2, "OK."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0xca

    const-string v2, "OK."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0xcc

    const-string v2, "Ad retrieval failed: No ads for this device/country right now or your App ID is paused."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-string v2, "No ad retrieved: did you set a valid App ID? Get one at http://revmob.com."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x199

    const-string v2, "No ad retrieved: did you set a valid Placement ID? Get one at http://revmob.com."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x1a6

    const-string v2, "Request requirements did not met. Did you set required permissions?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x1a7

    const-string v2, "Is your ad unit paused? Please, check it in the RevMob Console."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x1f4

    const-string v2, "Unexpected server error."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const/16 v1, 0x1f7

    const-string v2, "Unexpected server error."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/revmob/client/RevMobClient;

    invoke-direct {v0}, Lcom/revmob/client/RevMobClient;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->instance:Lcom/revmob/client/RevMobClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->sessionStarted:Z

    .line 55
    sget-object v0, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    iput-object v0, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    .line 56
    sget-object v0, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    iput-object v0, p0, Lcom/revmob/client/RevMobClient;->parallaxMode:Lcom/revmob/RevMobParallaxMode;

    .line 58
    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    .line 59
    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    .line 60
    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestInstalledApps:Z

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/revmob/client/RevMobClient;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/revmob/client/RevMobClient;->instance:Lcom/revmob/client/RevMobClient;

    return-object v0
.end method

.method public static setProductionAdress(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 84
    const v0, 0x2a9b56c4

    if-ne p1, v0, :cond_0

    sput-object p0, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    .line 85
    :cond_0
    return-void
.end method

.method public static setSDKName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 395
    if-eqz p0, :cond_0

    .line 396
    sput-object p0, Lcom/revmob/client/RevMobClient;->SDK_NAME:Ljava/lang/String;

    .line 397
    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_SOURCE_NAME:Ljava/lang/String;

    .line 399
    :cond_0
    return-void
.end method

.method public static setSDKVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    if-eqz p0, :cond_0

    .line 404
    sput-object p0, Lcom/revmob/client/RevMobClient;->SDK_VERSION:Ljava/lang/String;

    .line 405
    const-string v0, "9.0.1"

    sput-object v0, Lcom/revmob/client/RevMobClient;->SDK_SOURCE_VERSION:Ljava/lang/String;

    .line 407
    :cond_0
    return-void
.end method

.method public static sett0(J)V
    .locals 0

    .prologue
    .line 414
    sput-wide p0, Lcom/revmob/client/RevMobClient;->t0:J

    .line 415
    return-void
.end method

.method public static sett1(J)V
    .locals 0

    .prologue
    .line 417
    sput-wide p0, Lcom/revmob/client/RevMobClient;->t1:J

    .line 418
    return-void
.end method

.method public static sett2(J)V
    .locals 0

    .prologue
    .line 420
    sput-wide p0, Lcom/revmob/client/RevMobClient;->t2:J

    .line 421
    return-void
.end method

.method public static sett3(J)V
    .locals 0

    .prologue
    .line 423
    sput-wide p0, Lcom/revmob/client/RevMobClient;->t3:J

    .line 424
    return-void
.end method


# virtual methods
.method addServerEndPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    sget-object v0, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    return-void
.end method

.method createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const-string v0, "videos"

    if-eq p1, v0, :cond_0

    const-string v0, "video"

    if-ne p1, v0, :cond_1

    :cond_0
    if-eqz p5, :cond_1

    .line 210
    const-string p1, "rewardedVideos"

    .line 211
    const-string p2, "rewardedVideos"

    .line 213
    :cond_1
    invoke-virtual {p0, p4}, Lcom/revmob/client/RevMobClient;->isPlacementIdValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_with_placement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "PLACEMENT_ID"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    if-eqz p5, :cond_3

    const-string v1, "fullscreens"

    if-eq p1, v1, :cond_2

    const-string v1, "fullscreen"

    if-ne p1, v1, :cond_3

    .line 230
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?video=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_3
    return-object v0

    .line 219
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v4/mobile_apps/%s/placements/%s/%s/fetch_only.json"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p4, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetch_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v4/mobile_apps/%s/%s/fetch_only.json"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    sget-object v1, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching ad using testing mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    invoke-virtual {v1}, Lcom/revmob/RevMobTestingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/revmob/client/RevMobClient;->serverRequestWithSessionVerification(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 167
    return-void
.end method

.method public fetchAdLink(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    .line 152
    const-string v1, "link"

    const-string v2, "anchors"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 154
    return-void
.end method

.method public fetchBanner(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    .line 146
    const-string v1, "banner"

    const-string v2, "banners"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 148
    return-void
.end method

.method public fetchFullscreen(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    .line 125
    const-string v1, "fullscreen"

    const-string v2, "fullscreens"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 127
    return-void
.end method

.method public fetchPopup(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    .line 158
    const-string v1, "pop_up"

    const-string v2, "pop_ups"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 160
    return-void
.end method

.method public fetchVideo(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;I)V
    .locals 6

    .prologue
    .line 131
    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 132
    const-string v1, "video"

    const-string v2, "videos"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 137
    return-void

    .line 134
    :cond_0
    const-string v1, "video"

    const-string v2, "videos"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public fetchVideoOrFullscreen(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    .line 140
    const-string v1, "fullscreen"

    const-string v2, "fullscreens"

    iget-object v3, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/revmob/client/RevMobClient;->createFetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->fetch(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 142
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getParallaxMode()Lcom/revmob/RevMobParallaxMode;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->parallaxMode:Lcom/revmob/RevMobParallaxMode;

    return-object v0
.end method

.method public getTestingMode()Lcom/revmob/RevMobTestingMode;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    return-object v0
.end method

.method handleDownloadError(ILcom/revmob/client/RevMobClientListener;)V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/revmob/client/RevMobClient;->LOG_MESSAGES:Landroid/util/SparseArray;

    const-string v1, "RevMob did not answered as expected."

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_0

    .line 341
    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleError(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v1, v0}, Lcom/revmob/RevMobAdsListener;->onRevMobSessionNotStarted(Ljava/lang/String;)V

    .line 348
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    .line 351
    :cond_2
    return-void
.end method

.method handleSuccess(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 285
    :try_start_0
    new-instance v0, Lcom/revmob/internal/RevMobEncryption;

    invoke-direct {v0}, Lcom/revmob/internal/RevMobEncryption;-><init>()V

    .line 286
    invoke-virtual {v0, p1}, Lcom/revmob/internal/RevMobEncryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    if-eqz v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v1}, Lcom/revmob/RevMobAdsListener;->onRevMobSessionIsStarted()V

    .line 291
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestInstalledApps:Z

    .line 302
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    if-eqz v1, :cond_2

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    .line 304
    sget-wide v2, Lcom/revmob/client/RevMobClient;->t0:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    sget-wide v2, Lcom/revmob/client/RevMobClient;->t1:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    sget-wide v2, Lcom/revmob/client/RevMobClient;->t2:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    sget-wide v2, Lcom/revmob/client/RevMobClient;->t3:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 305
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/revmob/client/RevMobClient;->t0:J

    .line 306
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/revmob/client/RevMobClient;->t1:J

    .line 307
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/revmob/client/RevMobClient;->t2:J

    .line 308
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/revmob/client/RevMobClient;->t3:J

    .line 312
    :cond_2
    if-eqz p2, :cond_3

    .line 313
    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleResponse(Ljava/lang/String;)V

    .line 334
    :cond_3
    :goto_1
    return-void

    .line 295
    :cond_4
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestInstalledApps:Z

    if-eqz v1, :cond_5

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->requestInstalledApps:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v0, "It was not possible to load the RevMob banner because your device run out of RAM memory."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 318
    if-eqz p2, :cond_3

    .line 319
    const-string v0, "It was not possible to load the RevMob banner because your device run out of RAM memory."

    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleError(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :cond_5
    :try_start_1
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    if-nez v1, :cond_1

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/revmob/client/RevMobClient;->t1:J
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    const-string v1, "Error on parse response from server."

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 323
    invoke-static {p1, v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    if-eqz p2, :cond_3

    .line 325
    const-string v0, "Error on parse response from server."

    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleError(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :catch_2
    move-exception v0

    .line 329
    invoke-static {p1, v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    if-eqz p2, :cond_3

    .line 331
    const-string v0, "Error on parse response from server. Unknown error."

    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method isAppIdValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPlacementIdValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method processResponse(Lorg/apache/http/HttpResponse;Lcom/revmob/client/RevMobClientListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p1, :cond_1

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->handleDownloadError(ILcom/revmob/client/RevMobClientListener;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 264
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xca

    if-eq v0, v1, :cond_2

    .line 265
    invoke-virtual {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->handleDownloadError(ILcom/revmob/client/RevMobClientListener;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->encodedResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-nez v0, :cond_3

    .line 269
    const-string v0, "Bad response from server."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 270
    if-eqz p2, :cond_0

    .line 271
    const-string v0, "Bad response from server."

    invoke-interface {p2, v0}, Lcom/revmob/client/RevMobClientListener;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->handleSuccess(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    goto :goto_0
.end method

.method public registerInstall(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 5

    .prologue
    .line 114
    const-string v0, "install"

    .line 116
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/revmob/client/RevMobClient;->serverRequestWithSessionVerification(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 122
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v4/mobile_apps/%s/install.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public registerUserInformation(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    const-string v1, "user_information"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/revmob/client/RevMobClient;->serverEndPoints:Ljava/util/Map;

    const-string v1, "user_information"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    :try_start_0
    sget-object v1, Lcom/revmob/android/RevMobContext;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 176
    invoke-virtual {p0, v0, p1, p2}, Lcom/revmob/client/RevMobClient;->serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    if-eqz p1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    sget-object v1, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting impression using testing mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    invoke-virtual {v1}, Lcom/revmob/RevMobTestingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/client/RevMobClient;->serverRequestWithSessionVerification(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 193
    :cond_1
    return-void
.end method

.method public serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->reportingImpression:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->requestInstalledApps:Z

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/revmob/client/RevMobClient;->t0:J

    .line 243
    :cond_0
    new-instance v0, Lcom/revmob/client/RevMobClient$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/revmob/client/RevMobClient$1;-><init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    return-void
.end method

.method public serverRequestWithSessionVerification(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->sessionStarted:Z

    if-nez v0, :cond_0

    .line 197
    const-string v0, "Call RevMobAds.start(activity, APP_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/revmob/client/RevMobClient;->serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    goto :goto_0
.end method

.method public setParallaxMode(Lcom/revmob/RevMobParallaxMode;)V
    .locals 1

    .prologue
    .line 375
    iput-object p1, p0, Lcom/revmob/client/RevMobClient;->parallaxMode:Lcom/revmob/RevMobParallaxMode;

    .line 376
    sget-object v0, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    if-eq p1, v0, :cond_0

    .line 377
    const-string v0, "Parallax mode enabled"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v0, "Parallax mode disabled"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTestingMode(Lcom/revmob/RevMobTestingMode;)V
    .locals 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/revmob/client/RevMobClient;->testingMode:Lcom/revmob/RevMobTestingMode;

    .line 363
    sget-object v0, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    if-eq p1, v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Testing mode enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/revmob/RevMobTestingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v0, "Testing mode disabled"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeoutInSeconds(I)V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 385
    sput p1, Lcom/revmob/internal/HTTPHelper;->globalTimeoutInSeconds:I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v0, "Invalid timeout."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSession(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;Lcom/revmob/RevMobAdsListener;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 88
    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Lcom/revmob/client/RevMobClient;->isAppIdValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->requestIsStartSession:Z

    .line 91
    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->sessionStarted:Z

    .line 92
    iput-object p1, p0, Lcom/revmob/client/RevMobClient;->appId:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/revmob/client/RevMobClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/revmob/client/RevMobClient;->PRODUCTION_SERVER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/v4/mobile_apps/%s/sessions.json"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, p2, p3}, Lcom/revmob/client/RevMobClient;->serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 96
    const/16 v1, 0x1e

    sput v1, Lcom/revmob/internal/HTTPHelper;->globalTimeoutInSeconds:I

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v0, "Invalid App ID."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 104
    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "You can use just one App Id per application."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method
