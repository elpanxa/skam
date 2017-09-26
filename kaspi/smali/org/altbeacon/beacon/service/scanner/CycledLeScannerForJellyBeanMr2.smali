.class public Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;
.super Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.source "CycledLeScannerForJellyBeanMr2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycledLeScannerForJellyBeanMr2"


# instance fields
.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    return-object v0
.end method

.method private getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method


# virtual methods
.method protected deferScanIfNeeded()Z
    .locals 10

    .prologue
    const-wide/16 v0, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mNextScanCycleStartTime:J

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 38
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 39
    const-string v6, "CycledLeScannerForJellyBeanMr2"

    const-string v7, "Waiting to start next bluetooth scan for another %s milliseconds"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-boolean v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mBackgroundFlag:Z

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->setWakeUpAlarm()V

    .line 47
    :cond_0
    iget-object v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mHandler:Landroid/os/Handler;

    new-instance v6, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$1;

    invoke-direct {v6, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)V

    cmp-long v7, v2, v0

    if-lez v7, :cond_1

    :goto_0
    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v4

    .line 55
    :goto_1
    return v0

    :cond_1
    move-wide v0, v2

    .line 47
    goto :goto_0

    :cond_2
    move v0, v5

    .line 55
    goto :goto_1
.end method

.method protected finishScan()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanningPaused:Z

    .line 69
    return-void
.end method

.method protected startScan()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 62
    return-void
.end method

.method protected stopScan()V
    .locals 4

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "CycledLeScannerForJellyBeanMr2"

    const-string v2, "Internal Android exception scanning for beacons"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
