.class public Lcom/revmob/internal/RevMobBeaconManager;
.super Landroid/app/Service;
.source "RevMobBeaconManager.java"

# interfaces
.implements Lorg/altbeacon/beacon/RangeNotifier;
.implements Lorg/altbeacon/beacon/startup/BootstrapNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/internal/RevMobBeaconManager$RealTime;,
        Lcom/revmob/internal/RevMobBeaconManager$Analytics;,
        Lcom/revmob/internal/RevMobBeaconManager$Beaconx;
    }
.end annotation


# instance fields
.field private BKGND_SCAN_PERIOD:I

.field private BTW_BKGND_SCAN_PERIOD:I

.field private BTW_FRGND_SCAN_PERIOD:I

.field private FRGND_SCAN_PERIOD:I

.field analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

.field private beaconData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private beaconLayout:Ljava/lang/String;

.field fullscreen:Lcom/revmob/ads/fullscreen/RevMobFullscreen;

.field private identifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

.field private mRevmobJSON:Lorg/json/JSONObject;

.field monitoring:Z

.field now:D

.field private rangedRegions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/revmob/internal/RevMobBeaconManager$Beaconx;",
            ">;>;"
        }
    .end annotation
.end field

.field ranging:Z

.field realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

.field private regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private uuidArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1388

    const/16 v0, 0x7d0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    iput v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_BKGND_SCAN_PERIOD:I

    iput v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BKGND_SCAN_PERIOD:I

    iput v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->FRGND_SCAN_PERIOD:I

    iput v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_FRGND_SCAN_PERIOD:I

    .line 33
    const-string v0, "m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24"

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconLayout:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->regions:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->identifiers:Ljava/util/ArrayList;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    .line 72
    const-string v0, "RevMobBeaconManager constructor"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    invoke-direct {v0, p0}, Lcom/revmob/internal/RevMobBeaconManager$Analytics;-><init>(Lcom/revmob/internal/RevMobBeaconManager;)V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    .line 75
    new-instance v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    invoke-direct {v0, p0}, Lcom/revmob/internal/RevMobBeaconManager$RealTime;-><init>(Lcom/revmob/internal/RevMobBeaconManager;)V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/internal/RevMobBeaconManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private parseJSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 338
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-object v1
.end method

.method private parseParameters(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mConfig:Ljava/util/HashMap;

    .line 307
    :try_start_0
    const-string v0, "uuidArray"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/revmob/internal/RevMobBeaconManager;->parseJSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->uuidArray:Ljava/util/ArrayList;

    .line 308
    const-string v0, "monitoring"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->monitoring:Z

    .line 309
    const-string v0, "ranging"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->ranging:Z

    .line 311
    const-string v0, "beaconLayout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconLayout:Ljava/lang/String;

    .line 313
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->url:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    const-string v2, "distance"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->distance:I

    .line 316
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    const-string v2, "refresh"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->requestFreq:I

    .line 317
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    const-string v2, "sample"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->sampleFreq:I

    .line 318
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    const-string v2, "timeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->timeout:I

    .line 320
    const-string v0, "frequencies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 321
    const-string v1, "background"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BKGND_SCAN_PERIOD:I

    .line 322
    const-string v1, "btwBackground"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_BKGND_SCAN_PERIOD:I

    .line 323
    const-string v1, "foreground"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->FRGND_SCAN_PERIOD:I

    .line 324
    const-string v1, "btwForeground"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_FRGND_SCAN_PERIOD:I

    .line 326
    const-string v0, "realTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->url:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    const-string v2, "distance"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->distance:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private startMonitoringBeacons()V
    .locals 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->monitoring:Z

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BKGND_SCAN_PERIOD:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    .line 103
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_BKGND_SCAN_PERIOD:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 104
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->FRGND_SCAN_PERIOD:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundScanPeriod(J)V

    .line 105
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->BTW_FRGND_SCAN_PERIOD:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundBetweenScanPeriod(J)V

    goto :goto_0
.end method


# virtual methods
.method public checkClosestBeacon()V
    .locals 8

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;

    .line 213
    iget-object v4, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v4

    iget-object v6, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget v6, v6, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->distance:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    iget-wide v4, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-wide v6, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->timeout:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 214
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v4

    iget-object v5, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 215
    :cond_2
    iget-object v1, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    .line 219
    :cond_3
    iget-wide v4, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-wide v6, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->timeout:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    .line 220
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 224
    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/Beacon;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 225
    :cond_5
    iput-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 226
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p0, v0}, Lcom/revmob/internal/RevMobBeaconManager;->createBeaconData(Lorg/altbeacon/beacon/Beacon;)Ljava/util/HashMap;

    move-result-object v0

    .line 227
    const-string v1, "event"

    const-string v2, "closestBeacon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->mClosestBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    :cond_6
    return-void
.end method

.method public collectData()V
    .locals 12

    .prologue
    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v0, "timestamp"

    iget-wide v4, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "event"

    const-string v1, "didRangeBeacons"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    invoke-virtual {p0, v1}, Lcom/revmob/internal/RevMobBeaconManager;->createRegionData(Lorg/altbeacon/beacon/Region;)Ljava/util/HashMap;

    move-result-object v1

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;

    .line 184
    iget-object v7, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v7}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v8

    iget-object v7, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget v7, v7, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->distance:I

    int-to-double v10, v7

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_1

    iget-object v7, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v7}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_1

    .line 185
    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p0, v0}, Lcom/revmob/internal/RevMobBeaconManager;->createBeaconData(Lorg/altbeacon/beacon/Beacon;)Ljava/util/HashMap;

    move-result-object v0

    .line 186
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_2
    const-string v0, "beacons"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_3
    const-string v0, "regions"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-wide v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-wide v2, v2, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastRequest:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget v2, v2, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->requestFreq:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-wide v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iput-wide v2, v0, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastRequest:D

    .line 198
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-object v1, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->url:Ljava/lang/String;

    new-instance v2, Lcom/revmob/internal/RevMobBeaconManager$1;

    invoke-direct {v2, p0}, Lcom/revmob/internal/RevMobBeaconManager$1;-><init>(Lcom/revmob/internal/RevMobBeaconManager;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 205
    :cond_4
    return-void
.end method

.method public createBeaconData(Lorg/altbeacon/beacon/Beacon;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v1, "accuracy"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "rssi"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "major"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "minor"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "mac"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "txpower"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getTxPower()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "bltName"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "manufacturer"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getManufacturer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method public createRegionData(Lorg/altbeacon/beacon/Region;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Region;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v1, "identifier"

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0
.end method

.method public didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didDetermineStateForRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/revmob/internal/RevMobBeaconManager;->createRegionData(Lorg/altbeacon/beacon/Region;)Ljava/util/HashMap;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->ranging:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p2}, Lorg/altbeacon/beacon/BeaconManager;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 139
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p0}, Lorg/altbeacon/beacon/BeaconManager;->setRangeNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V

    .line 143
    :goto_0
    const-string v1, "event"

    const-string v2, "didDetermineState"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p2}, Lorg/altbeacon/beacon/BeaconManager;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didEnterRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/revmob/internal/RevMobBeaconManager;->createRegionData(Lorg/altbeacon/beacon/Region;)Ljava/util/HashMap;

    move-result-object v0

    .line 156
    const-string v1, "event"

    const-string v2, "didEnterRegion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didExitRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/revmob/internal/RevMobBeaconManager;->createRegionData(Lorg/altbeacon/beacon/Region;)Ljava/util/HashMap;

    move-result-object v0

    .line 165
    const-string v1, "event"

    const-string v2, "didExitRegion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didRangeBeaconsInRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 260
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 262
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 264
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 265
    new-instance v3, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;

    invoke-direct {v3, p0, v0}, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;-><init>(Lcom/revmob/internal/RevMobBeaconManager;Lorg/altbeacon/beacon/Beacon;)V

    .line 266
    iget-wide v4, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-object v6, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget v6, v6, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->timeout:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->timeout:D

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-wide v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-wide v2, v2, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->lastDidRange:D

    sub-double/2addr v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    iget-wide v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iput-wide v2, v0, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->lastDidRange:D

    .line 273
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->checkClosestBeacon()V

    .line 274
    iget-wide v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-wide v2, v2, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastSample:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget v2, v2, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->sampleFreq:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-wide v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->now:D

    iput-wide v2, v0, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastSample:D

    .line 276
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->collectData()V

    .line 280
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getNow()D
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/internal/RevMobBeaconManager;->notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public notifyBeaconData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mRevmobJSON:Lorg/json/JSONObject;

    const-string v1, "beaconData"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mRevmobJSON:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/revmob/client/RevMobClient;->serverRequest(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 291
    if-eqz p3, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending beaconData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 293
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 347
    const-string v0, "Beacon onBind service"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 354
    const-string v0, "Beacons monitoring service created"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 355
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "revmobJSON"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->mRevmobJSON:Lorg/json/JSONObject;

    .line 358
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "beaconConfiguration"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/revmob/internal/RevMobBeaconManager;->parseParameters(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 366
    const-string v0, "Beacons monitoring service destroyed"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 371
    const-string v0, "onStartCommand beacon"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->startBeaconScan()V

    .line 374
    const/4 v0, 0x2

    return v0
.end method

.method public printBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Major: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Minor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public printRangedRegions()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->rangedRegions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;

    .line 250
    iget-object v0, v0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p0, v0}, Lcom/revmob/internal/RevMobBeaconManager;->printBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method public startBeaconScan()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    const-string v0, "startBeaconScan"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->analytics:Lcom/revmob/internal/RevMobBeaconManager$Analytics;

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->realTime:Lcom/revmob/internal/RevMobBeaconManager$RealTime;

    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getNow()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/revmob/internal/RevMobBeaconManager$RealTime;->lastDidRange:D

    iput-wide v4, v1, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastSample:D

    iput-wide v4, v0, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->lastRequest:D

    .line 84
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->uuidArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->regions:Ljava/util/ArrayList;

    new-instance v3, Lorg/altbeacon/beacon/Region;

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-direct {v3, v0, v4, v6, v6}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->identifiers:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobBeaconManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 91
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/altbeacon/beacon/BeaconParser;

    invoke-direct {v1}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    iget-object v2, p0, Lcom/revmob/internal/RevMobBeaconManager;->beaconLayout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap;

    iget-object v1, p0, Lcom/revmob/internal/RevMobBeaconManager;->regions:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;-><init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Ljava/util/List;)V

    iput-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    .line 97
    invoke-direct {p0}, Lcom/revmob/internal/RevMobBeaconManager;->startMonitoringBeacons()V

    .line 98
    return-void
.end method
