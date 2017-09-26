.class public Lorg/altbeacon/beacon/startup/RegionBootstrap;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/startup/RegionBootstrap$1;,
        Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppStarter"


# instance fields
.field private application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

.field private beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private disabled:Z

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/startup/BootstrapNotifier;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 68
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 73
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 74
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 76
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 78
    const-string v0, "AppStarter"

    const-string v1, "Waiting for BeaconService connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 50
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 54
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 58
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 59
    const-string v0, "AppStarter"

    const-string v1, "Waiting for BeaconService connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 92
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v2, v0}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "AppStarter"

    const-string v2, "Can\'t stop bootstrap regions"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    goto :goto_0
.end method
