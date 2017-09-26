.class Lorg/altbeacon/beacon/BeaconManager$1;
.super Ljava/lang/Object;
.source "BeaconManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 577
    const-string v0, "BeaconManager"

    const-string v1, "we have a connection to the service now"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 579
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    # getter for: Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    monitor-enter v2

    .line 580
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    # getter for: Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 581
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    iget-boolean v1, v1, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    if-nez v1, :cond_0

    .line 585
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-interface {v1}, Lorg/altbeacon/beacon/BeaconConsumer;->onBeaconServiceConnect()V

    .line 586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    goto :goto_0

    .line 589
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

    .line 590
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 594
    const-string v0, "BeaconManager"

    const-string v1, "onServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$1;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    const/4 v1, 0x0

    # setter for: Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 596
    return-void
.end method
