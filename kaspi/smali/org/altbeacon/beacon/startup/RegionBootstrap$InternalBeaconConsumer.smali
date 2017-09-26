.class Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"

# interfaces
.implements Lorg/altbeacon/beacon/BeaconConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/startup/RegionBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalBeaconConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onBeaconServiceConnect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    const-string v0, "AppStarter"

    const-string v1, "Activating background region monitoring"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    invoke-static {v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setMonitorNotifier(Lorg/altbeacon/beacon/MonitorNotifier;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$300(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 111
    const-string v2, "AppStarter"

    const-string v3, "Background region monitoring activated for region %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;
    invoke-static {v2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 113
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->isBackgroundModeUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "AppStarter"

    const-string v2, "Can\'t set up bootstrap regions"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_1
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    # getter for: Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 144
    return-void
.end method
