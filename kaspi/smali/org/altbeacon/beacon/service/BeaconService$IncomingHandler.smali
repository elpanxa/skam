.class Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;
.super Landroid/os/Handler;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/altbeacon/beacon/service/BeaconService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/BeaconService;

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/altbeacon/beacon/service/StartRMData;

    .line 139
    if-eqz v1, :cond_0

    .line 140
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    const-string v2, "BeaconService"

    const-string v3, "start ranging received"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    new-instance v3, Lorg/altbeacon/beacon/service/Callback;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getCallbackPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/service/BeaconService;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    .line 144
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v2, "BeaconService"

    const-string v3, "stop ranging received"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/service/BeaconService;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 149
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v2, "BeaconService"

    const-string v3, "start monitoring received"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    new-instance v3, Lorg/altbeacon/beacon/service/Callback;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getCallbackPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/service/BeaconService;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    .line 154
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto :goto_0

    .line 157
    :pswitch_3
    const-string v2, "BeaconService"

    const-string v3, "stop monitoring received"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/service/BeaconService;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 159
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto/16 :goto_0

    .line 162
    :pswitch_4
    const-string v2, "BeaconService"

    const-string v3, "set scan intervals received"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
