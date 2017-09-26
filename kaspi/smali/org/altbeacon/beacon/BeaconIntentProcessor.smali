.class public Lorg/altbeacon/beacon/BeaconIntentProcessor;
.super Landroid/app/IntentService;
.source "BeaconIntentProcessor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconIntentProcessor"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "BeaconIntentProcessor"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    const-string v0, "BeaconIntentProcessor"

    const-string v4, "got an intent to process"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "monitoringData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "rangingData"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RangingData;

    move-object v4, v0

    .line 57
    :goto_0
    if-eqz v1, :cond_1

    .line 58
    const-string v0, "BeaconIntentProcessor"

    const-string v5, "got ranging data"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "BeaconIntentProcessor"

    const-string v5, "Ranging data has a null beacons collection"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getRangingNotifier()Lorg/altbeacon/beacon/RangeNotifier;

    move-result-object v0

    .line 63
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangingData;->getBeacons()Ljava/util/Collection;

    move-result-object v5

    .line 64
    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    .line 70
    :goto_1
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getDataRequestNotifier()Lorg/altbeacon/beacon/RangeNotifier;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangingData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lorg/altbeacon/beacon/RangeNotifier;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    .line 76
    :cond_1
    if-eqz v4, :cond_2

    .line 77
    const-string v0, "BeaconIntentProcessor"

    const-string v1, "got monitoring data"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getMonitoringNotifier()Lorg/altbeacon/beacon/MonitorNotifier;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    const-string v0, "BeaconIntentProcessor"

    const-string v5, "Calling monitoring notifier: %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/altbeacon/beacon/MonitorNotifier;->didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V

    .line 82
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/MonitoringData;->isInside()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/altbeacon/beacon/MonitorNotifier;->didEnterRegion(Lorg/altbeacon/beacon/Region;)V

    .line 92
    :cond_2
    :goto_3
    return-void

    .line 68
    :cond_3
    const-string v0, "BeaconIntentProcessor"

    const-string v6, "but ranging notifier is null, so we\'re dropping it."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 81
    goto :goto_2

    .line 86
    :cond_5
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/MonitoringData;->getRegion()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/altbeacon/beacon/MonitorNotifier;->didExitRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_3

    :cond_6
    move-object v4, v1

    goto/16 :goto_0
.end method
