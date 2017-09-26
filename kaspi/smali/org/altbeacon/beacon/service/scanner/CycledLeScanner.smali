.class public abstract Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.super Ljava/lang/Object;
.source "CycledLeScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycledLeScanner"


# instance fields
.field protected mBackgroundFlag:Z

.field protected mBetweenScanPeriod:J

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field protected final mContext:Landroid/content/Context;

.field protected final mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

.field protected final mHandler:Landroid/os/Handler;

.field private mLastScanCycleEndTime:J

.field private mLastScanCycleStartTime:J

.field protected mNextScanCycleStartTime:J

.field protected mRestartNeeded:Z

.field private mScanCycleStopTime:J

.field private mScanCyclerStarted:Z

.field private mScanPeriod:J

.field private mScanning:Z

.field private mScanningEnabled:Z

.field protected mScanningPaused:Z

.field private mWakeUpOperation:Landroid/app/PendingIntent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    .line 27
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    .line 28
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 29
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    .line 33
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 34
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    .line 44
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 45
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    .line 48
    iput-wide p2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    .line 49
    iput-wide p4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    .line 50
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    .line 51
    iput-object p7, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    .line 52
    iput-object p8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 53
    iput-boolean p6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 54
    return-void
.end method

.method public static createScanner(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
    .locals 9

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 59
    const-string v0, "CycledLeScanner"

    const-string v1, "Not supported prior to API 18."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 64
    const-string v0, "CycledLeScanner"

    const-string v1, "This is not Android 5.0.  We are using old scanning APIs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    .line 76
    :goto_1
    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->isAndroidLScanningDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "CycledLeScanner"

    const-string v1, "This Android 5.0, but L scanning is disabled. We are using old scanning APIs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_2
    const-string v0, "CycledLeScanner"

    const-string v1, "This Android 5.0.  We are using new scanning APIs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_1

    .line 79
    :cond_3
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    goto :goto_0
.end method

.method private finishScanCycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v0, "CycledLeScanner"

    const-string v1, "Done with scan cycle"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onCycleEnd()V

    .line 241
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    const-string v0, "CycledLeScanner"

    const-string v1, "stopping bluetooth le scan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    .line 255
    :cond_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getNextScanStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 256
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz v0, :cond_2

    .line 257
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "CycledLeScanner"

    const-string v2, "Internal Android exception scanning for beacons"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_2
    const-string v0, "CycledLeScanner"

    const-string v1, "Scanning disabled.  No ranging or monitoring regions are active."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 261
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->cancelWakeUpAlarm()V

    goto :goto_1
.end method

.method private getNextScanStartTime()J
    .locals 8

    .prologue
    .line 321
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    :goto_0
    return-wide v0

    .line 324
    :cond_0
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    add-long/2addr v0, v2

    .line 325
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rem-long v0, v4, v0

    sub-long v0, v2, v0

    .line 326
    const-string v2, "CycledLeScanner"

    const-string v3, "Normalizing between scan period from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected cancelWakeUpAlarm()V
    .locals 5

    .prologue
    .line 305
    const-string v0, "CycledLeScanner"

    const-string v1, "cancel wakeup alarm: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 308
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 310
    :cond_0
    return-void
.end method

.method protected abstract deferScanIfNeeded()Z
.end method

.method protected abstract finishScan()V
.end method

.method protected getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 272
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 273
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "CycledLeScanner"

    const-string v1, "Failed to construct a BluetoothAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method protected scanLeDevice(Ljava/lang/Boolean;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 161
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    const-string v0, "CycledLeScanner"

    const-string v1, "No bluetooth adapter.  beaconService cannot scan."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->deferScanIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "CycledLeScanner"

    const-string v1, "starting a new scan cycle"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    if-eqz v0, :cond_7

    .line 170
    :cond_2
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    .line 171
    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningPaused:Z

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->isRecoveryInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    const-string v0, "CycledLeScanner"

    const-string v1, "Skipping scan because crash recovery is in progress."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :cond_3
    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    .line 204
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scheduleScanCycleStop()V

    .line 206
    const-string v0, "CycledLeScanner"

    const-string v1, "Scan started"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz v0, :cond_6

    .line 179
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    if-eqz v0, :cond_5

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 181
    const-string v0, "CycledLeScanner"

    const-string v1, "restarting a bluetooth le scan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->startScan()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_3
    const-string v1, "CycledLeScanner"

    const-string v2, "Internal Android exception scanning for beacons"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    .line 198
    const-string v1, "CycledLeScanner"

    const-string v2, "Exception starting bluetooth scan.  Perhaps bluetooth is disabled or unavailable?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    :cond_5
    :try_start_4
    const-string v0, "CycledLeScanner"

    const-string v1, "starting a new bluetooth le scan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 191
    :cond_6
    const-string v0, "CycledLeScanner"

    const-string v1, "Scanning unnecessary - no monitoring or ranging active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 201
    :cond_7
    const-string v0, "CycledLeScanner"

    const-string v1, "We are already scanning"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 208
    :cond_8
    const-string v0, "CycledLeScanner"

    const-string v1, "disabling scan"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    .line 211
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stopScan()V

    .line 212
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    goto/16 :goto_0
.end method

.method protected scheduleScanCycleStop()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x3e8

    .line 218
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 219
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 220
    const-string v4, "CycledLeScanner"

    const-string v5, "Waiting to stop scan cycle for another %s milliseconds"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setWakeUpAlarm()V

    .line 225
    :cond_0
    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v5, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;

    invoke-direct {v5, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)V

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    :goto_0
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 225
    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScanCycle()V

    goto :goto_1
.end method

.method public setScanPeriods(JJZ)V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 91
    const-string v2, "CycledLeScanner"

    const-string v3, "Set scan periods called with %s, %s Background mode must have changed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    move/from16 v0, p5

    if-eq v2, v0, :cond_0

    .line 94
    iput-boolean v11, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 96
    :cond_0
    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 97
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    .line 98
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    .line 99
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    if-eqz v2, :cond_3

    .line 100
    const-string v2, "CycledLeScanner"

    const-string v3, "We are in the background.  Setting wakeup alarm"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setWakeUpAlarm()V

    .line 106
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 107
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 111
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    add-long v4, v4, p3

    .line 112
    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 113
    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 114
    const-string v4, "CycledLeScanner"

    const-string v5, "Adjusted nextScanStartTime to be %s"

    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_1
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 121
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    add-long/2addr v2, p1

    .line 122
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 123
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    .line 124
    const-string v2, "CycledLeScanner"

    const-string v3, "Adjusted scanStopTime to be %s"

    new-array v4, v11, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_2
    return-void

    .line 103
    :cond_3
    const-string v2, "CycledLeScanner"

    const-string v3, "We are not in the background.  Cancelling wakeup alarm"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->cancelWakeUpAlarm()V

    goto :goto_0
.end method

.method protected setWakeUpAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 287
    const-wide/32 v0, 0x493e0

    .line 288
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 289
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    .line 291
    :cond_0
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 292
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    move-wide v2, v0

    .line 294
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 295
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-class v5, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v4, "wakeup"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->cancelWakeUpAlarm()V

    .line 299
    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 301
    const-string v0, "CycledLeScanner"

    const-string v1, "Set a wakeup alarm to go off in %s ms: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v6

    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    aput-object v2, v4, v7

    invoke-static {v0, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    return-void

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const-string v0, "CycledLeScanner"

    const-string v1, "start called"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 132
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    if-nez v0, :cond_0

    .line 133
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "CycledLeScanner"

    const-string v1, "scanning already started"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract startScan()V
.end method

.method public stop()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v0, "CycledLeScanner"

    const-string v1, "stop called"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 143
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stopScan()V

    .line 148
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    .line 150
    :cond_1
    return-void
.end method

.method protected abstract stopScan()V
.end method
