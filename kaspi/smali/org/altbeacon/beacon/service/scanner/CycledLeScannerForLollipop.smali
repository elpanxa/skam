.class public Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;
.super Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.source "CycledLeScannerForLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final BACKGROUND_L_SCAN_DETECTION_PERIOD_MILLIS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CycledLeScannerForLollipop"


# instance fields
.field private leScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mBackgroundLScanFirstDetectionTime:J

.field private mBackgroundLScanStartTime:J

.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mScanDeferredBefore:Z

.field private mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 25
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 26
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 32
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    return-wide v0
.end method

.method private getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method

.method private getScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "CycledLeScannerForLollipop"

    const-string v1, "Making new Android L scanner"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 220
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 221
    const-string v0, "CycledLeScannerForLollipop"

    const-string v1, "Failed to make new Android L scanner"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method


# virtual methods
.method protected deferScanIfNeeded()Z
    .locals 8

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mNextScanCycleStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 81
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 88
    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    if-nez v4, :cond_0

    .line 89
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 92
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "This is Android L. Doing a filtered scan for the background."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 99
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    new-instance v4, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;

    invoke-direct {v4}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;-><init>()V

    iget-object v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;->createScanFiltersForBeaconParsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 116
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 117
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 118
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 120
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    .line 125
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "We\'ve been detecting for a bit.  Stopping Android L background scanning"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :try_start_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 128
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 144
    :cond_3
    :goto_2
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "Waiting to start full bluetooth scan for another %s milliseconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundFlag:Z

    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->setWakeUpAlarm()V

    .line 152
    :cond_4
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$1;

    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)V

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    const-wide/16 v0, 0x3e8

    :cond_5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 159
    const/4 v0, 0x1

    .line 176
    :goto_3
    return v0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "Cannot start scan.  Bluetooth may be turned off."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v4, "CycledLeScannerForLollipop"

    const-string v5, "This is Android L, but we last saw a beacon only %s ago, so we will not keep scanning in background."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    :catch_1
    move-exception v2

    .line 132
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "Cannot stop scan.  Bluetooth may be turned off."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    :cond_7
    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "Delivering Android L background scanning results"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-interface {v2}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onCycleEnd()V

    goto :goto_2

    .line 162
    :cond_8
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 164
    :try_start_2
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 165
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :cond_9
    :goto_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 174
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 176
    const/4 v0, 0x0

    goto :goto_3

    .line 168
    :catch_2
    move-exception v0

    .line 169
    const-string v0, "CycledLeScannerForLollipop"

    const-string v1, "Cannot stop scan.  Bluetooth may be turned off."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method protected finishScan()V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanningPaused:Z

    .line 214
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v0, "CycledLeScannerForLollipop"

    const-string v1, "Cannot stop scan.  Bluetooth may be turned off."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected startScan()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundFlag:Z

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "CycledLeScannerForLollipop"

    const-string v2, "starting scan in SCAN_MODE_LOW_POWER"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 193
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    const-string v0, "CycledLeScannerForLollipop"

    const-string v2, "starting scan in SCAN_MODE_LOW_LATENCY"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v0, "CycledLeScannerForLollipop"

    const-string v1, "Cannot start scan.  Bluetooth may be turned off."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected stopScan()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "CycledLeScannerForLollipop"

    const-string v2, "Internal Android exception scanning for beacons"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
