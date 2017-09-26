.class public Lorg/altbeacon/beacon/BeaconManager;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;,
        Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_BETWEEN_SCAN_PERIOD:J = 0x493e0L

.field public static final DEFAULT_BACKGROUND_SCAN_PERIOD:J = 0x2710L

.field public static final DEFAULT_FOREGROUND_BETWEEN_SCAN_PERIOD:J = 0x0L

.field public static final DEFAULT_FOREGROUND_SCAN_PERIOD:J = 0x44cL

.field private static final TAG:Ljava/lang/String; = "BeaconManager"

.field protected static beaconSimulator:Lorg/altbeacon/beacon/simulator/BeaconSimulator;

.field protected static client:Lorg/altbeacon/beacon/BeaconManager;

.field protected static distanceModelUpdateUrl:Ljava/lang/String;

.field private static sAndroidLScanningDisabled:Z

.field private static sManifestCheckingDisabled:Z


# instance fields
.field private backgroundBetweenScanPeriod:J

.field private backgroundScanPeriod:J

.field private final beaconParsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private beaconServiceConnection:Landroid/content/ServiceConnection;

.field private final consumers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/altbeacon/beacon/BeaconConsumer;",
            "Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

.field private foregroundBetweenScanPeriod:J

.field private foregroundScanPeriod:J

.field private mBackgroundMode:Z

.field private mBackgroundModeUninitialized:Z

.field private mContext:Landroid/content/Context;

.field protected monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

.field private final monitoredRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field protected rangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

.field private final rangedRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->client:Lorg/altbeacon/beacon/BeaconManager;

    .line 115
    sput-boolean v1, Lorg/altbeacon/beacon/BeaconManager;->sAndroidLScanningDisabled:Z

    .line 116
    sput-boolean v1, Lorg/altbeacon/beacon/BeaconManager;->sManifestCheckingDisabled:Z

    .line 663
    const-string v0, "http://data.altbeacon.org/android-distance.json"

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->distanceModelUpdateUrl:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    .line 106
    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 107
    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 108
    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundModeUninitialized:Z

    .line 155
    const-wide/16 v0, 0x44c

    iput-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    .line 157
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    .line 158
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    .line 574
    new-instance v0, Lorg/altbeacon/beacon/BeaconManager$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconManager$1;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconServiceConnection:Landroid/content/ServiceConnection;

    .line 232
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    .line 233
    sget-boolean v0, Lorg/altbeacon/beacon/BeaconManager;->sManifestCheckingDisabled:Z

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->verifyServiceDeclaration()V

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/ArrayList;

    new-instance v1, Lorg/altbeacon/beacon/AltBeaconParser;

    invoke-direct {v1}, Lorg/altbeacon/beacon/AltBeaconParser;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method static synthetic access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private callbackPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 569
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string v1, "BeaconManager"

    const-string v2, "callback packageName: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    return-object v0
.end method

.method public static getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->beaconSimulator:Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    return-object v0
.end method

.method private getBetweenScanPeriod()J
    .locals 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    if-eqz v0, :cond_0

    .line 704
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    .line 706
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    goto :goto_0
.end method

.method public static getDistanceModelUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->distanceModelUpdateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->client:Lorg/altbeacon/beacon/BeaconManager;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "BeaconManager"

    const-string v1, "BeaconManager instance creation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v0, Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->client:Lorg/altbeacon/beacon/BeaconManager;

    .line 214
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->client:Lorg/altbeacon/beacon/BeaconManager;

    return-object v0
.end method

.method private getScanPeriod()J
    .locals 2

    .prologue
    .line 695
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    if-eqz v0, :cond_0

    .line 696
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    .line 698
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    goto :goto_0
.end method

.method public static isAndroidLScanningDisabled()Z
    .locals 1

    .prologue
    .line 735
    sget-boolean v0, Lorg/altbeacon/beacon/BeaconManager;->sAndroidLScanningDisabled:Z

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0, p1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    return-void
.end method

.method public static setAndroidLScanningDisabled(Z)V
    .locals 0

    .prologue
    .line 746
    sput-boolean p0, Lorg/altbeacon/beacon/BeaconManager;->sAndroidLScanningDisabled:Z

    .line 747
    return-void
.end method

.method public static setBeaconSimulator(Lorg/altbeacon/beacon/simulator/BeaconSimulator;)V
    .locals 0

    .prologue
    .line 674
    sput-object p0, Lorg/altbeacon/beacon/BeaconManager;->beaconSimulator:Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    .line 675
    return-void
.end method

.method public static setDebug(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-static {}, Lorg/altbeacon/beacon/logging/Loggers;->verboseLogger()Lorg/altbeacon/beacon/logging/Logger;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/logging/LogManager;->setLogger(Lorg/altbeacon/beacon/logging/Logger;)V

    .line 131
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/altbeacon/beacon/logging/LogManager;->setVerboseLoggingEnabled(Z)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lorg/altbeacon/beacon/logging/Loggers;->empty()Lorg/altbeacon/beacon/logging/Logger;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/logging/LogManager;->setLogger(Lorg/altbeacon/beacon/logging/Logger;)V

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/altbeacon/beacon/logging/LogManager;->setVerboseLoggingEnabled(Z)V

    goto :goto_0
.end method

.method public static setDistanceModelUpdateUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 670
    sput-object p0, Lorg/altbeacon/beacon/BeaconManager;->distanceModelUpdateUrl:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public static setsManifestCheckingDisabled(Z)V
    .locals 0

    .prologue
    .line 756
    sput-boolean p0, Lorg/altbeacon/beacon/BeaconManager;->sManifestCheckingDisabled:Z

    .line 757
    return-void
.end method

.method private verifyServiceDeclaration()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 712
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    const-class v3, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 716
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    throw v0

    .line 719
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lorg/altbeacon/beacon/BeaconConsumer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 269
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to SDK 18.  Method invocation will be ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;-><init>(Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/BeaconManager$1;)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    .line 274
    if-eqz v0, :cond_1

    .line 275
    const-string v0, "BeaconManager"

    const-string v2, "This consumer is already bound"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_1
    :try_start_1
    const-string v0, "BeaconManager"

    const-string v2, "This consumer is not bound.  binding: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p1}, Lorg/altbeacon/beacon/BeaconConsumer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/altbeacon/beacon/BeaconConsumer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 281
    const-string v0, "BeaconManager"

    const-string v2, "consumer count is now: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public checkAvailability()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/altbeacon/beacon/BleNotAvailableException;
        }
    .end annotation

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 248
    new-instance v0, Lorg/altbeacon/beacon/BleNotAvailableException;

    const-string v1, "Bluetooth LE not supported by this device"

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lorg/altbeacon/beacon/BleNotAvailableException;

    const-string v1, "Bluetooth LE not supported by this device"

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BleNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBeaconParsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->isAnyConsumerBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getDataRequestNotifier()Lorg/altbeacon/beacon/RangeNotifier;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    return-object v0
.end method

.method public getMonitoredRegions()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 620
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMonitoringNotifier()Lorg/altbeacon/beacon/MonitorNotifier;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    return-object v0
.end method

.method public getRangedRegions()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 629
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRangingNotifier()Lorg/altbeacon/beacon/RangeNotifier;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    return-object v0
.end method

.method public isAnyConsumerBound()Z
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBackgroundModeUninitialized()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundModeUninitialized:Z

    return v0
.end method

.method public isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 327
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackgroundBetweenScanPeriod(J)V
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    .line 203
    return-void
.end method

.method public setBackgroundMode(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 363
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to SDK 18.  Method invocation will be ignored"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_0
    iput-boolean v3, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundModeUninitialized:Z

    .line 366
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    if-eq p1, v0, :cond_1

    .line 367
    iput-boolean p1, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->updateScanPeriods()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v0, "BeaconManager"

    const-string v1, "Cannot contact service to set scan periods"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBackgroundScanPeriod(J)V
    .locals 1

    .prologue
    .line 193
    iput-wide p1, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    .line 194
    return-void
.end method

.method protected setDataRequestNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 684
    return-void
.end method

.method public setForegroundBetweenScanPeriod(J)V
    .locals 1

    .prologue
    .line 181
    iput-wide p1, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    .line 182
    return-void
.end method

.method public setForegroundScanPeriod(J)V
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    .line 170
    return-void
.end method

.method public setMonitorNotifier(Lorg/altbeacon/beacon/MonitorNotifier;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 414
    return-void
.end method

.method public setRangeNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 397
    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 493
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 494
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to API 18.  Method invocation will be ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 498
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 501
    new-instance v1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->callbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v6

    iget-boolean v8, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V

    .line 502
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 504
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 431
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to SDK 18.  Method invocation will be ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 438
    new-instance v1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->callbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v6

    iget-boolean v8, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V

    .line 439
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 441
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 522
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 523
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to API 18.  Method invocation will be ignored"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 527
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    const/4 v1, 0x5

    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    .line 530
    new-instance v1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->callbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v6

    iget-boolean v8, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V

    .line 531
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 533
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 535
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 536
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move-object v1, v0

    .line 539
    goto :goto_1

    .line 540
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->monitoredRegions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 459
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to SDK 18.  Method invocation will be ignored"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 463
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    const/4 v1, 0x3

    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    .line 466
    new-instance v1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->callbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v6

    iget-boolean v8, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V

    .line 467
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 469
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 471
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 472
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move-object v1, v0

    .line 475
    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 294
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to SDK 18.  Method invocation will be ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "BeaconManager"

    const-string v2, "Unbinding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconServiceConnection:Landroid/content/ServiceConnection;

    invoke-interface {p1, v0}, Lorg/altbeacon/beacon/BeaconConsumer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 301
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    .line 316
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 309
    :cond_2
    :try_start_1
    const-string v0, "BeaconManager"

    const-string v2, "This consumer is not bound to: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const-string v0, "BeaconManager"

    const-string v2, "Bound consumers: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    const-string v3, "BeaconManager"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateScanPeriods()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 554
    const-string v0, "BeaconManager"

    const-string v1, "Not supported prior to API 18.  Method invocation will be ignored"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 561
    const-string v1, "BeaconManager"

    const-string v2, "updating background flag to %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    const-string v1, "BeaconManager"

    const-string v2, "updating scan period to %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v2

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v4

    iget-boolean v6, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    invoke-direct/range {v1 .. v6}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(JJZ)V

    .line 564
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0
.end method
