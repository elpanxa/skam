.class public Lcom/adsdk/sdk/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sRunningAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/adsdk/sdk/AdManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adDoNotTrack:Z

.field private alreadyRequestedInterstitial:Z

.field private alreadyRequestedVideo:Z

.field private androidAdId:Ljava/lang/String;

.field private customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

.field private customFullscreenListener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

.field private interstitialRequestURL:Ljava/lang/String;

.field private isInterstitialAdsEnabled:Z

.field private isVideoAdsEnabled:Z

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

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIncludeLocation:Z

.field private mListener:Lcom/adsdk/sdk/AdListener;

.field private mPublisherId:Ljava/lang/String;

.field private mRequestThread:Ljava/lang/Thread;

.field private mResponse:Lcom/adsdk/sdk/AdResponse;

.field private prioritizeVideoAds:Z

.field private request:Lcom/adsdk/sdk/AdRequest;

.field private requestedHorizontalAd:Z

.field private userAge:I

.field private userGender:Lcom/adsdk/sdk/Gender;

.field private videoMaxDuration:I

.field private videoMinimalDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    .line 40
    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z

    .line 87
    invoke-static {p1}, Lcom/adsdk/sdk/Util;->prepareAndroidAdId(Landroid/content/Context;)V

    .line 88
    invoke-static {p1}, Lcom/adsdk/sdk/AdManager;->setmContext(Landroid/content/Context;)V

    .line 89
    iput-object p2, p0, Lcom/adsdk/sdk/AdManager;->interstitialRequestURL:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    .line 91
    iput-boolean p4, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    .line 92
    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->initialize()V

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/AdManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->prioritizeVideoAds:Z

    return v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    return-object v0
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/AdManager;->notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V

    return-void
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->loadCustomEventFullscreen()V

    return-void
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    return-object v0
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/AdManager;Z)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/AdManager;->requestAdInternal(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/AdManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/AdManager;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z

    return v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->customFullscreenListener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    return-object v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    return-void
.end method

.method static synthetic access$22(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->notifyAdClicked()V

    return-void
.end method

.method static synthetic access$23(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->finishCustomEventFullscreen()V

    return-void
.end method

.method static synthetic access$24(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;Z)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/AdResponse;Z)V

    return-void
.end method

.method static synthetic access$25(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getInterstitialRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdRequest;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/AdManager;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/AdManager;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z

    return v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/AdManager;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z

    return v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getVideoRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/AdManager;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z

    return-void
.end method

.method public static closeRunningAd(Lcom/adsdk/sdk/AdResponse;Z)V
    .locals 4

    .prologue
    .line 64
    sget-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find AdManager with running ad:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notify closing event to AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 70
    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0
.end method

.method private createCustomFullscreenListener()Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/adsdk/sdk/AdManager$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/AdManager$6;-><init>(Lcom/adsdk/sdk/AdManager;)V

    return-object v0
.end method

.method private finishCustomEventFullscreen()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->finish()V

    .line 453
    :cond_0
    return-void
.end method

.method public static getAdManager(Lcom/adsdk/sdk/AdResponse;)Lcom/adsdk/sdk/AdManager;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getInterstitialRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 9

    .prologue
    const/16 v8, 0x1e0

    const/16 v5, 0x140

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    .line 520
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->androidAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAndroidAdId(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->adDoNotTrack:Z

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdDoNotTrack(Z)V

    .line 522
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    sget-object v1, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v1, v4}, Lcom/adsdk/sdk/AdRequest;->setVideoRequest(Z)V

    .line 528
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    .line 529
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget v2, p0, Lcom/adsdk/sdk/AdManager;->userAge:I

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setUserAge(I)V

    .line 530
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->keywords:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setKeywords(Ljava/util/List;)V

    .line 532
    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    if-eqz v1, :cond_1

    .line 533
    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 534
    :cond_1
    if-eqz v0, :cond_2

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is longitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 537
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    .line 542
    :goto_0
    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->requestedHorizontalAd:Z

    .line 544
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/AdRequest;->setAdspaceHeight(I)V

    .line 545
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v8}, Lcom/adsdk/sdk/AdRequest;->setAdspaceWidth(I)V

    .line 552
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/AdRequest;->setAdspaceStrict(Z)V

    .line 554
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setConnectionType(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setIpAddress(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setTimestamp(J)V

    .line 558
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->interstitialRequestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v6, v7}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 540
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v6, v7}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_0

    .line 547
    :cond_3
    iput-boolean v4, p0, Lcom/adsdk/sdk/AdManager;->requestedHorizontalAd:Z

    .line 548
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v8}, Lcom/adsdk/sdk/AdRequest;->setAdspaceHeight(I)V

    .line 549
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/AdRequest;->setAdspaceWidth(I)V

    goto :goto_1
.end method

.method private getVideoRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    .line 565
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->androidAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAndroidAdId(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->adDoNotTrack:Z

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdDoNotTrack(Z)V

    .line 567
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    sget-object v1, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    .line 572
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/AdManager;->userAge:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAge(I)V

    .line 573
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setKeywords(Ljava/util/List;)V

    .line 575
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setVideoRequest(Z)V

    .line 576
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/AdManager;->videoMaxDuration:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setVideoMaxDuration(I)V

    .line 577
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/AdManager;->videoMinimalDuration:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setVideoMinDuration(I)V

    .line 578
    const/4 v0, 0x0

    .line 579
    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    if-eqz v1, :cond_1

    .line 580
    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 581
    :cond_1
    if-eqz v0, :cond_2

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is longitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 584
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceHeight(I)V

    .line 591
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceWidth(I)V

    .line 592
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceStrict(Z)V

    .line 594
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setConnectionType(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setIpAddress(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setTimestamp(J)V

    .line 598
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->interstitialRequestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 587
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_0
.end method

.method private static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 607
    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    .line 390
    const-string v0, "Ad SDK Version:6.0.8"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/adsdk/sdk/Util;->getAndroidAdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->androidAdId:Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/adsdk/sdk/Util;->hasAdDoNotTrack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->adDoNotTrack:Z

    .line 395
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    const-string v0, "Publisher Id cannot be null or empty"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdManager Publisher Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Advertising Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->androidAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    .line 402
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->createCustomFullscreenListener()Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->customFullscreenListener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    .line 403
    return-void

    .line 401
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCustomEventFullscreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    iput-object v3, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    .line 358
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 365
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEvent;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreenFactory;->create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    .line 367
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adsdk/sdk/AdManager$5;

    invoke-direct {v2, p0, v0}, Lcom/adsdk/sdk/AdManager$5;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/customevents/CustomEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    iput-object v3, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    .line 382
    const-string v0, "Failed to create Custom Event Fullscreen."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static notifyAdClick(Lcom/adsdk/sdk/AdResponse;)V
    .locals 4

    .prologue
    .line 74
    sget-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-direct {v0}, Lcom/adsdk/sdk/AdManager;->notifyAdClicked()V

    .line 78
    :cond_0
    return-void
.end method

.method private notifyAdClicked()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$9;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$9;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_0
    return-void
.end method

.method private notifyAdClose(Lcom/adsdk/sdk/AdResponse;Z)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Close. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$11;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    :cond_0
    return-void
.end method

.method private notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$8;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/AdManager$8;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    :cond_0
    return-void
.end method

.method private notifyAdShown(Lcom/adsdk/sdk/AdResponse;Z)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Shown. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$10;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    .line 503
    return-void
.end method

.method private notifyNoAdFound()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "No ad found."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$7;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$7;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    .line 466
    return-void
.end method

.method private requestAdInternal(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 107
    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 110
    :cond_0
    if-nez p1, :cond_1

    .line 111
    iput-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z

    .line 112
    iput-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 116
    const-string v0, "Requesting Ad (v6.0.8-3.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    .line 118
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z

    if-nez v0, :cond_2

    .line 119
    iput-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->prioritizeVideoAds:Z

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 197
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$2;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 207
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 209
    :cond_3
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setmContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 611
    sput-object p0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    .line 612
    return-void
.end method


# virtual methods
.method public getVideoMaxDuration()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/adsdk/sdk/AdManager;->videoMaxDuration:I

    return v0
.end method

.method public getVideoMinimalDuration()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/adsdk/sdk/AdManager;->videoMinimalDuration:I

    return v0
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrioritizeVideoAds()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->prioritizeVideoAds:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->release()V

    .line 82
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->finishCustomEventFullscreen()V

    .line 83
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->cancel()V

    .line 84
    return-void
.end method

.method public requestAd()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/AdManager;->requestAdInternal(Z)V

    .line 103
    return-void
.end method

.method public requestAd(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_0

    .line 219
    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 222
    :cond_0
    iput-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z

    .line 223
    iput-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z

    .line 225
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 226
    const-string v0, "Requesting Ad (v6.0.8-3.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$3;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/AdManager$3;-><init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    .line 286
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$4;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 296
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAdAndShow(J)V
    .locals 7

    .prologue
    .line 307
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 310
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 312
    add-long v4, v0, p1

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 320
    :cond_0
    iput-object v2, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 321
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    .line 322
    return-void

    .line 315
    :cond_1
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setInterstitialAdsEnabled(Z)V
    .locals 0

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z

    .line 616
    return-void
.end method

.method public setInterstitialRequestURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->interstitialRequestURL:Ljava/lang/String;

    .line 215
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
    .line 655
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->keywords:Ljava/util/List;

    .line 656
    return-void
.end method

.method public setListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    .line 99
    return-void
.end method

.method public setPrioritizeVideoAds(Z)V
    .locals 0

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdManager;->prioritizeVideoAds:Z

    .line 628
    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    .prologue
    .line 651
    iput p1, p0, Lcom/adsdk/sdk/AdManager;->userAge:I

    .line 652
    return-void
.end method

.method public setUserGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->userGender:Lcom/adsdk/sdk/Gender;

    .line 648
    return-void
.end method

.method public setVideoAdsEnabled(Z)V
    .locals 0

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z

    .line 620
    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 0

    .prologue
    .line 643
    iput p1, p0, Lcom/adsdk/sdk/AdManager;->videoMaxDuration:I

    .line 644
    return-void
.end method

.method public setVideoMinimalDuration(I)V
    .locals 0

    .prologue
    .line 635
    iput p1, p0, Lcom/adsdk/sdk/AdManager;->videoMinimalDuration:I

    .line 636
    return-void
.end method

.method public showAd()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 326
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    invoke-direct {p0, v1, v0}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/AdResponse;Z)V

    .line 354
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/adsdk/sdk/AdResponse;->setTimestamp(J)V

    .line 335
    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->requestedHorizontalAd:Z

    invoke-virtual {v2, v1}, Lcom/adsdk/sdk/AdResponse;->setHorizontalOrientationRequested(Z)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Showing Ad:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    if-nez v1, :cond_2

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v3, "RICH_AD_DATA"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 344
    :goto_1
    const/4 v0, 0x1

    .line 345
    sget-object v1, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdResponse;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0

    .line 342
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    invoke-virtual {v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;->showFullscreen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 350
    :try_start_2
    const-string v3, "Unknown exception when showing Ad"

    invoke-static {v3, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    invoke-direct {p0, v2, v1}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0

    .line 347
    :cond_3
    :try_start_3
    const-string v1, "No network available. Cannot show Ad."

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 351
    :catchall_0
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 352
    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/AdResponse;Z)V

    .line 353
    throw v0

    .line 351
    :catchall_1
    move-exception v0

    goto :goto_3
.end method
