.class public Lcom/revmob/RevMob;
.super Ljava/lang/Object;
.source "RevMob.java"


# static fields
.field private static bannerActivity:Landroid/app/Activity;

.field private static bannerAd:Lcom/revmob/ads/banner/RevMobBanner;

.field private static bannerLayout:Landroid/widget/RelativeLayout;

.field private static bannerParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private static eula:Lcom/revmob/internal/RevMobEula;

.field private static listener:Lcom/revmob/client/SessionClientListener;

.field private static revmobListener:Lcom/revmob/RevMobAdsListener;

.field protected static session:Lcom/revmob/RevMob;


# instance fields
.field private didSetBannerParams:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/revmob/RevMob;->didSetBannerParams:Z

    .line 186
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 187
    new-instance v0, Lcom/revmob/android/StoredData;

    invoke-direct {v0, p1}, Lcom/revmob/android/StoredData;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0}, Lcom/revmob/android/StoredData;->isAlreadyTracked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 189
    :goto_0
    invoke-static {v2, p1}, Lcom/revmob/internal/HTTPHelper;->setUserAgent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 190
    invoke-static {v2, p1}, Lcom/revmob/internal/HTTPHelper;->setEulaUrl(Ljava/lang/String;Landroid/app/Activity;)V

    .line 191
    invoke-static {v2, p1}, Lcom/revmob/internal/HTTPHelper;->setEulaVersion(Ljava/lang/String;Landroid/app/Activity;)V

    .line 192
    invoke-static {v1, p1}, Lcom/revmob/internal/HTTPHelper;->setShouldShowEula(ZLandroid/app/Activity;)V

    .line 193
    new-instance v1, Lcom/revmob/client/SessionClientListener;

    sget-object v2, Lcom/revmob/RevMob;->revmobListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v1, p1, v0, v2}, Lcom/revmob/client/SessionClientListener;-><init>(Landroid/app/Activity;ZLcom/revmob/RevMobAdsListener;)V

    sput-object v1, Lcom/revmob/RevMob;->listener:Lcom/revmob/client/SessionClientListener;

    .line 195
    sget-object v0, Lcom/revmob/RevMob;->listener:Lcom/revmob/client/SessionClientListener;

    sget-object v1, Lcom/revmob/RevMob;->revmobListener:Lcom/revmob/RevMobAdsListener;

    invoke-static {p2, v0, v1, p1}, Lcom/revmob/android/RevMobContext;->loadAdvertisingInfo(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    .line 196
    invoke-static {p1}, Lcom/revmob/android/RevMobScreen;->load(Landroid/app/Activity;)V

    .line 197
    return-void

    :cond_0
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method static synthetic access$000()Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$202(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 292
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 293
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 294
    invoke-virtual {v0, p2, p4}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->loadFullscreen(Ljava/lang/String;I)V

    .line 295
    return-object v0
.end method

.method private returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 306
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 307
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 308
    invoke-virtual {v0, p2}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->loadRewardedVideo(Ljava/lang/String;)V

    .line 309
    return-object v0
.end method

.method private returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 299
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 300
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 301
    invoke-virtual {v0, p2}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->loadVideo(Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method public static session()Lcom/revmob/RevMob;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "Call RevMobAds.start(activity, APP_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    .line 182
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    return-object v0
.end method

.method public static start(Landroid/app/Activity;)Lcom/revmob/RevMob;
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 107
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.revmob.app.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must put the revmob.app.id value in the AndroidManifest.xml file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->loadAndShow()V

    .line 116
    :cond_1
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/revmob/RevMob;->validatePermissions(Landroid/app/Activity;)V

    .line 89
    invoke-static {p0}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 90
    invoke-static {p0}, Lcom/revmob/RevMob;->validateFullscreenActivity(Landroid/app/Activity;)V

    .line 91
    new-instance v0, Lcom/revmob/RevMob;

    invoke-direct {v0, p0, p1}, Lcom/revmob/RevMob;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    .line 93
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    return-object v0
.end method

.method public static startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/RevMob;
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.revmob.app.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    sput-object p1, Lcom/revmob/RevMob;->revmobListener:Lcom/revmob/RevMobAdsListener;

    .line 133
    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must the revmob.app.id value in the AndroidManifest.xml file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->loadAndShow()V

    .line 141
    :cond_1
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public static startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;I)Lcom/revmob/RevMob;
    .locals 1

    .prologue
    .line 145
    if-eqz p2, :cond_0

    .line 146
    invoke-static {p2, p3}, Lcom/revmob/client/RevMobClient;->setProductionAdress(Ljava/lang/String;I)V

    .line 148
    :cond_0
    invoke-static {p0, p1}, Lcom/revmob/RevMob;->startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/RevMob;

    move-result-object v0

    return-object v0
.end method

.method public static startWithListenerForWrapper(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/RevMob;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 162
    sput-object p2, Lcom/revmob/RevMob;->revmobListener:Lcom/revmob/RevMobAdsListener;

    .line 163
    invoke-static {p0, p1}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->loadAndShow()V

    .line 168
    :cond_1
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method private static validateActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RevMob: Activity must not be a null value."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method private static validateFullscreenActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isFullscreenActivityAvailable(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 63
    const-string v0, "Permission %s is required. Add it to your AndroidManifest.xml file"

    .line 64
    const-string v0, "INTERNET"

    invoke-static {p0, v0}, Lcom/revmob/internal/AndroidHelper;->isPermissionEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "Permission %s is required. Add it to your AndroidManifest.xml file"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptAndDismissEula()V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/revmob/RevMob;->listener:Lcom/revmob/client/SessionClientListener;

    invoke-virtual {v0}, Lcom/revmob/client/SessionClientListener;->getEulaPopup()Lcom/revmob/internal/RevMobEula;

    move-result-object v0

    sput-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    .line 201
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->acceptAndDismiss()V

    .line 202
    return-void
.end method

.method public createBanner(Landroid/app/Activity;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2

    .prologue
    .line 347
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 348
    new-instance v0, Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/banner/RevMobBanner;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->setChangeBannerParams(Z)V

    .line 350
    invoke-virtual {v0, p2}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    .line 351
    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    return-object v0
.end method

.method public createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    .prologue
    .line 594
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 595
    new-instance v0, Lcom/revmob/ads/link/RevMobLink;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/link/RevMobLink;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 596
    invoke-virtual {v0, p2}, Lcom/revmob/ads/link/RevMobLink;->load(Ljava/lang/String;)V

    .line 597
    return-object v0
.end method

.method public createPopup(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;

    move-result-object v0

    return-object v0
.end method

.method public createPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;
    .locals 1

    .prologue
    .line 660
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 661
    new-instance v0, Lcom/revmob/ads/popup/RevMobPopup;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/popup/RevMobPopup;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    .line 662
    invoke-virtual {v0, p2}, Lcom/revmob/ads/popup/RevMobPopup;->load(Ljava/lang/String;)V

    .line 663
    return-object v0
.end method

.method public createRewardedVideo(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/revmob/RevMob;->returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/revmob/RevMob;->returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createVideo(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/revmob/RevMob;->returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/revmob/RevMob;->returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public getParallaxMode()Lcom/revmob/RevMobParallaxMode;
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->getParallaxMode()Lcom/revmob/RevMobParallaxMode;

    move-result-object v0

    return-object v0
.end method

.method public getTestingMode()Lcom/revmob/RevMobTestingMode;
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->getTestingMode()Lcom/revmob/RevMobTestingMode;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgeRangeMax()I
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/revmob/android/UserData;->getUserAgeRangeMax()I

    move-result v0

    return v0
.end method

.method public getUserAgeRangeMin()I
    .locals 1

    .prologue
    .line 740
    invoke-static {}, Lcom/revmob/android/UserData;->getUserAgeRangeMin()I

    move-result v0

    return v0
.end method

.method public getUserBirthday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 766
    invoke-static {}, Lcom/revmob/android/UserData;->getUserBirthday()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Lcom/revmob/RevMobUserGender;
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lcom/revmob/android/UserData;->getUserGender()Lcom/revmob/RevMobUserGender;

    move-result-object v0

    return-object v0
.end method

.method public getUserInterests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {}, Lcom/revmob/android/UserData;->getUserInterests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/revmob/android/UserData;->getUserPage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideBanner(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/revmob/RevMob;->releaseBanner(Landroid/app/Activity;)V

    .line 379
    return-void
.end method

.method public hideLoadedBanner()Z
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/RevMob$4;

    invoke-direct {v1, p0}, Lcom/revmob/RevMob$4;-><init>(Lcom/revmob/RevMob;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 533
    const/4 v0, 0x1

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/revmob/ads/link/RevMobLink;->open()V

    .line 553
    return-void
.end method

.method public openLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0, p1, p2, p3}, Lcom/revmob/RevMob;->createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lcom/revmob/ads/link/RevMobLink;->open()V

    .line 571
    return-void
.end method

.method public preloadBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;
    .locals 10

    .prologue
    .line 466
    new-instance v0, Lcom/revmob/RevMob$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move v5, p5

    move/from16 v6, p6

    move v7, p3

    move v8, p4

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/revmob/RevMob$2;-><init>(Lcom/revmob/RevMob;Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;IIIII)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 498
    sget-object v0, Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public printEnvironmentInformation(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 673
    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    .line 674
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/revmob/android/RevMobContext;->printEnvironmentInformation(Ljava/lang/String;Landroid/app/Activity;)V

    .line 675
    return-void
.end method

.method public rejectEula()V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/revmob/RevMob;->listener:Lcom/revmob/client/SessionClientListener;

    invoke-virtual {v0}, Lcom/revmob/client/SessionClientListener;->getEulaPopup()Lcom/revmob/internal/RevMobEula;

    move-result-object v0

    sput-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    .line 206
    sget-object v0, Lcom/revmob/RevMob;->eula:Lcom/revmob/internal/RevMobEula;

    invoke-virtual {v0}, Lcom/revmob/internal/RevMobEula;->reject()V

    .line 207
    return-void
.end method

.method public releaseBanner(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/revmob/RevMob$1;

    invoke-direct {v0, p0}, Lcom/revmob/RevMob$1;-><init>(Lcom/revmob/RevMob;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public releaseLoadedBanner()V
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/revmob/RevMob;->hideLoadedBanner()Z

    .line 543
    sget-object v0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/revmob/RevMob;->releaseBanner(Landroid/app/Activity;)V

    .line 545
    :cond_0
    return-void
.end method

.method public setParallaxMode(Lcom/revmob/RevMobParallaxMode;)V
    .locals 1

    .prologue
    .line 707
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/revmob/client/RevMobClient;->setParallaxMode(Lcom/revmob/RevMobParallaxMode;)V

    .line 708
    return-void
.end method

.method public setTestingMode(Lcom/revmob/RevMobTestingMode;)V
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/revmob/client/RevMobClient;->setTestingMode(Lcom/revmob/RevMobTestingMode;)V

    .line 692
    return-void
.end method

.method public setTimeoutInSeconds(I)V
    .locals 1

    .prologue
    .line 715
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/revmob/client/RevMobClient;->setTimeoutInSeconds(I)V

    .line 716
    return-void
.end method

.method public setUserAgeRangeMax(I)V
    .locals 0

    .prologue
    .line 762
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserAgeRangeMax(I)V

    .line 763
    return-void
.end method

.method public setUserAgeRangeMin(I)V
    .locals 0

    .prologue
    .line 749
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserAgeRangeMin(I)V

    .line 750
    return-void
.end method

.method public setUserBirthday(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 775
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserBirthday(Ljava/util/Calendar;)V

    .line 776
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 723
    invoke-static {p1}, Lcom/revmob/android/UserData;->setEmail(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public setUserGender(Lcom/revmob/RevMobUserGender;)V
    .locals 0

    .prologue
    .line 736
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserGender(Lcom/revmob/RevMobUserGender;)V

    .line 737
    return-void
.end method

.method public setUserInterests(Ljava/util/List;)V
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
    .line 801
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserInterests(Ljava/util/List;)V

    .line 802
    return-void
.end method

.method public setUserPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 788
    invoke-static {p1}, Lcom/revmob/android/UserData;->setUserPage(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public showBanner(Landroid/app/Activity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public showBanner(Landroid/app/Activity;I)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public showBanner(Landroid/app/Activity;IIIII)Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 415
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 439
    invoke-virtual/range {p0 .. p8}, Lcom/revmob/RevMob;->preloadBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/revmob/RevMob;->showLoadedBanner()Z

    .line 441
    return-object v0
.end method

.method public showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 406
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v6

    .line 407
    sget v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:I

    invoke-static {p1, v0}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v7, p3

    move-object v8, p4

    .line 408
    invoke-virtual/range {v0 .. v8}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public showBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 399
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public showFullscreen(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    .line 214
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->setAutoShow(Z)V

    .line 215
    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->setAutoShow(Z)V

    .line 231
    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->setAutoShow(Z)V

    .line 223
    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/fullscreen/RevMobFullscreen;

    move-result-object v0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->setAutoShow(Z)V

    .line 249
    return-void
.end method

.method public showLoadedBanner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 502
    sget-object v1, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/revmob/RevMob;->hideLoadedBanner()Z

    .line 504
    sget-object v1, Lcom/revmob/RevMob;->bannerLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/RevMob;->bannerAd:Lcom/revmob/ads/banner/RevMobBanner;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/RevMob;->bannerParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 505
    sget-object v0, Lcom/revmob/RevMob;->bannerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/RevMob$3;

    invoke-direct {v1, p0}, Lcom/revmob/RevMob$3;-><init>(Lcom/revmob/RevMob;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    const/4 v0, 0x1

    .line 516
    :cond_0
    return v0
.end method

.method public showPopup(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->createPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/revmob/ads/popup/RevMobPopup;->show()V

    .line 606
    return-void
.end method

.method public showPopup(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/RevMob;->createPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lcom/revmob/ads/popup/RevMobPopup;->show()V

    .line 614
    return-void
.end method

.method public showPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/revmob/RevMob;->createPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/popup/RevMobPopup;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/revmob/ads/popup/RevMobPopup;->show()V

    .line 634
    return-void
.end method
