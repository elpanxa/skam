.class Lorg/altbeacon/beacon/service/BeaconService$1;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCycleEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # invokes: Lorg/altbeacon/beacon/service/BeaconService;->processExpiredMonitors()V
    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$100(Lorg/altbeacon/beacon/service/BeaconService;)V

    .line 307
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # invokes: Lorg/altbeacon/beacon/service/BeaconService;->processRangeData()V
    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$200(Lorg/altbeacon/beacon/service/BeaconService;)V

    .line 309
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # getter for: Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;
    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$300(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    const-string v0, "BeaconService"

    const-string v1, "Simulated scan data is deprecated and will be removed in a future release. Please use the new BeaconSimulator interface instead."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # getter for: Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;
    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$300(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 316
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # invokes: Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    invoke-static {v2, v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0

    .line 319
    :cond_0
    const-string v0, "BeaconService"

    const-string v1, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_1
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_2

    .line 327
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 328
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # invokes: Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    invoke-static {v2, v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    .line 331
    :cond_2
    const-string v0, "BeaconService"

    const-string v1, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_3
    :goto_2
    return-void

    .line 334
    :cond_4
    const-string v0, "BeaconService"

    const-string v1, "getBeacons is returning null. No simulated beacons to report."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/service/BeaconService$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    const/4 v3, 0x0

    new-instance v4, Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v4, v5, p1, p2, p3}, Lorg/altbeacon/beacon/service/BeaconService$ScanData;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method
