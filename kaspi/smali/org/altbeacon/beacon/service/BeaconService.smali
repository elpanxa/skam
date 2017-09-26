.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;,
        Lorg/altbeacon/beacon/service/BeaconService$ScanData;,
        Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;,
        Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
    }
.end annotation


# static fields
.field public static final MSG_SET_SCAN_PERIODS:I = 0x6

.field public static final MSG_START_MONITORING:I = 0x4

.field public static final MSG_START_RANGING:I = 0x2

.field public static final MSG_STOP_MONITORING:I = 0x5

.field public static final MSG_STOP_RANGING:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BeaconService"


# instance fields
.field private beaconParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private bindCount:I

.field private bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field private defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private handler:Landroid/os/Handler;

.field private mBackgroundFlag:Z

.field private mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

.field private mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

.field final mMessenger:Landroid/os/Messenger;

.field private monitoredRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/MonitorState;",
            ">;"
        }
    .end annotation
.end field

.field private rangedRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field

.field private scanningEnabled:Z

.field private simulatedScanData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private trackedBeacons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field trackedBeaconsPacketCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    .line 74
    iput v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    .line 76
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    .line 77
    iput-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 80
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBackgroundFlag:Z

    .line 104
    iput-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    .line 175
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    .line 296
    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/BeaconService$1;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    .line 422
    return-void
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->processExpiredMonitors()V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->processRangeData()V

    return-void
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/List;

    return-object v0
.end method

.method private matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 460
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 462
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_0
    const-string v3, "BeaconService"

    const-string v4, "This region (%s) does not match beacon: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_1
    return-object v1
.end method

.method private processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 367
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    .line 370
    :cond_0
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/Stats;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/Stats;->log(Lorg/altbeacon/beacon/Beacon;)V

    .line 373
    :cond_1
    iget v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeaconsPacketCount:I

    .line 374
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const-string v0, "BeaconService"

    const-string v1, "beacon detected multiple times in scan cycle : %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->trackedBeacons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v0, "BeaconService"

    const-string v1, "beacon detected : %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/service/BeaconService;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 390
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/MonitorState;

    .line 391
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->markInside()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v3

    const-string v4, "monitoringData"

    new-instance v5, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->isInside()Z

    move-result v1

    invoke-direct {v5, v1, v0}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v3, p0, v4, v5}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 397
    :cond_4
    const-string v0, "BeaconService"

    const-string v1, "looking for ranging region matches for this beacon"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 399
    :try_start_2
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/service/BeaconService;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 403
    const-string v3, "BeaconService"

    const-string v4, "matches ranging region: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangeState;

    .line 405
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/RangeState;->addBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    .line 407
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 408
    return-void
.end method

.method private processExpiredMonitors()V
    .locals 8

    .prologue
    .line 353
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 355
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 357
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/MonitorState;

    .line 358
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->isNewlyOutside()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const-string v4, "BeaconService"

    const-string v5, "found a monitor that expired: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    const-string v5, "monitoringData"

    new-instance v6, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitorState;->isInside()Z

    move-result v1

    invoke-direct {v6, v1, v0}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    return-void
.end method

.method private processRangeData()V
    .locals 7

    .prologue
    .line 341
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v2

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 343
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 345
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RangeState;

    .line 346
    const-string v4, "BeaconService"

    const-string v5, "Calling ranging callback"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangeState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    const-string v5, "rangingData"

    new-instance v6, Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangeState;->finalizeBeacons()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 183
    const-string v0, "BeaconService"

    const-string v1, "binding"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    .line 185
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 198
    const-string v0, "BeaconService"

    const-string v1, "beaconService version %s is starting up"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "2.1.4-SNAPSHOT"

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 200
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->start()V

    .line 201
    const-wide/16 v2, 0x44c

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBackgroundFlag:Z

    iget-object v7, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    iget-object v8, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->createScanner(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    .line 204
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/List;

    .line 205
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 206
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    invoke-static {v0}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    .line 210
    :try_start_0
    const-string v0, "org.altbeacon.beacon.SimulatedScanData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    const-string v1, "beacons"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v0, "BeaconService"

    const-string v1, "No org.altbeacon.beacon.SimulatedScanData class exists."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    const-string v1, "BeaconService"

    const-string v2, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 224
    const-string v0, "BeaconService"

    const-string v1, "Not supported prior to API 18."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->stop()V

    .line 228
    const-string v0, "BeaconService"

    const-string v1, "onDestroy called.  stopping scanning"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v0, "BeaconService"

    const-string v1, "unbinding"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bindCount:I

    .line 192
    return v3
.end method

.method public setScanPeriods(JJZ)V
    .locals 7

    .prologue
    .line 293
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setScanPeriods(JJZ)V

    .line 294
    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    const-string v0, "BeaconService"

    const-string v1, "startMonitoring called"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "BeaconService"

    const-string v2, "Already monitoring that region -- will replace existing region monitor."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/MonitorState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/MonitorState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const-string v0, "BeaconService"

    const-string v1, "Currently monitoring %s regions."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    .line 277
    :cond_1
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 6

    .prologue
    .line 238
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "BeaconService"

    const-string v2, "Already ranging that region -- will replace existing region."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/RangeState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "BeaconService"

    const-string v2, "Currently ranging %s regions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    .line 249
    :cond_1
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    const-string v0, "BeaconService"

    const-string v1, "stopMonitoring called"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 285
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const-string v1, "BeaconService"

    const-string v2, "Currently monitoring %s regions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 290
    :cond_0
    return-void

    .line 285
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 7

    .prologue
    .line 253
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 256
    const-string v2, "BeaconService"

    const-string v3, "Currently ranging %s regions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->scanningEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoredRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 262
    :cond_0
    return-void

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
