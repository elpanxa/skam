.class public Lcom/revmob/client/SessionClientListener;
.super Ljava/lang/Object;
.source "SessionClientListener.java"

# interfaces
.implements Lcom/revmob/client/RevMobClientListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private eula:Lcom/revmob/internal/RevMobEula;

.field private needToRegisterInstall:Z

.field private revmobListener:Lcom/revmob/RevMobAdsListener;

.field private sentUserInformation:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/client/SessionClientListener;->sentUserInformation:Z

    .line 25
    iput-object p1, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    .line 26
    iput-boolean p2, p0, Lcom/revmob/client/SessionClientListener;->needToRegisterInstall:Z

    .line 27
    iput-object p3, p0, Lcom/revmob/client/SessionClientListener;->revmobListener:Lcom/revmob/RevMobAdsListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/client/SessionClientListener;)Lcom/revmob/internal/RevMobEula;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->eula:Lcom/revmob/internal/RevMobEula;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/client/SessionClientListener;Lcom/revmob/internal/RevMobEula;)Lcom/revmob/internal/RevMobEula;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/revmob/client/SessionClientListener;->eula:Lcom/revmob/internal/RevMobEula;

    return-object p1
.end method

.method static synthetic access$100(Lcom/revmob/client/SessionClientListener;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revmob/client/SessionClientListener;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->revmobListener:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method


# virtual methods
.method public getEulaPopup()Lcom/revmob/internal/RevMobEula;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->eula:Lcom/revmob/internal/RevMobEula;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-static {p1}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "links"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 35
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getCustomUserAgent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0, v6}, Lcom/revmob/internal/HTTPHelper;->setUserAgent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 38
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getIpAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->setIpAddress(Ljava/lang/String;)V

    .line 41
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getEulaVersion(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0, v6}, Lcom/revmob/internal/HTTPHelper;->setEulaVersion(Ljava/lang/String;Landroid/app/Activity;)V

    .line 44
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getEulaUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0, v6}, Lcom/revmob/internal/HTTPHelper;->setEulaUrl(Ljava/lang/String;Landroid/app/Activity;)V

    .line 47
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getShouldExtractSocial(Lorg/json/JSONObject;)Z

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->setShouldExtractSocial(Z)V

    .line 50
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getShouldExtractGeolocation(Lorg/json/JSONObject;)Z

    move-result v0

    .line 51
    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->setShouldExtractGeolocation(Z)V

    .line 53
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getShouldExtractOtherAppsData(Lorg/json/JSONObject;)Z

    move-result v0

    .line 54
    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->setShouldExtractOtherAppsData(Z)V

    .line 56
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getShouldContinueOnBackground(Lorg/json/JSONObject;)Z

    move-result v0

    .line 57
    invoke-static {v0}, Lcom/revmob/internal/HTTPHelper;->setShouldContinueOnBackground(Z)V

    .line 59
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getShouldShowEula(Lorg/json/JSONObject;)Z

    move-result v0

    .line 60
    invoke-static {v0, v6}, Lcom/revmob/internal/HTTPHelper;->setShouldShowEula(ZLandroid/app/Activity;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application startSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 63
    const-string v0, "beaconConfig"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "beaconConfig"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/revmob/internal/RevMobBeacon;->initialize(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "href"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/revmob/client/RevMobClient;->addServerEndPoint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/revmob/client/SessionClientListener;->needToRegisterInstall:Z

    if-eqz v0, :cond_2

    .line 77
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v2, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/revmob/client/InstallClientListener;

    iget-object v4, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/revmob/client/InstallClientListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/revmob/client/RevMobClient;->registerInstall(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/revmob/client/SessionClientListener;->sentUserInformation:Z

    if-nez v0, :cond_3

    .line 80
    sput-boolean v7, Lcom/revmob/android/RevMobContext;->getInstalledApps:Z

    .line 81
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v2, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/revmob/client/InstallClientListener;

    iget-object v4, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/revmob/client/InstallClientListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/revmob/client/RevMobClient;->registerUserInformation(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 82
    iput-boolean v7, p0, Lcom/revmob/client/SessionClientListener;->sentUserInformation:Z

    .line 85
    :cond_3
    invoke-static {v1}, Lcom/revmob/ads/internal/AdRevMobClientListener;->getOpenAdLink(Lorg/json/JSONObject;)Z

    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    new-instance v0, Lcom/revmob/ads/link/RevMobLink;

    iget-object v1, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v6}, Lcom/revmob/ads/link/RevMobLink;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 88
    invoke-virtual {v0}, Lcom/revmob/ads/link/RevMobLink;->load()V

    .line 89
    invoke-virtual {v0}, Lcom/revmob/ads/link/RevMobLink;->open()V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/revmob/client/SessionClientListener;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/client/SessionClientListener$1;

    invoke-direct {v1, p0}, Lcom/revmob/client/SessionClientListener$1;-><init>(Lcom/revmob/client/SessionClientListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 71
    :catch_0
    move-exception v3

    goto :goto_1
.end method
