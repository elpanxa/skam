.class public Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.super Ljava/lang/Object;
.source "BluetoothCrashResolver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;
    }
.end annotation


# static fields
.field private static final BLUEDROID_MAX_BLUETOOTH_MAC_COUNT:I = 0x7c6

.field private static final BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT:I = 0x190

.field private static final DISTINCT_BLUETOOTH_ADDRESSES_FILE:Ljava/lang/String; = "BluetoothCrashResolverState.txt"

.field private static final MIN_TIME_BETWEEN_STATE_SAVES_MILLIS:J = 0xea60L

.field private static final PREEMPTIVE_ACTION_ENABLED:Z = true

.field private static final SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "BluetoothCrashResolver"

.field private static final TIME_TO_LET_DISCOVERY_RUN_MILLIS:I = 0x1388


# instance fields
.field private context:Landroid/content/Context;

.field private detectedCrashCount:I

.field private discoveryStartConfirmed:Z

.field private final distinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBluetoothCrashDetectionTime:J

.field private lastBluetoothOffTime:J

.field private lastBluetoothTurningOnTime:J

.field private lastRecoverySucceeded:Z

.field private lastStateSaveTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recoveryAttemptCount:I

.field private recoveryInProgress:Z

.field private updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 51
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 53
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    .line 54
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    .line 55
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 56
    iput v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 57
    iput v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 58
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 59
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 315
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 105
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "constructed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->loadState()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->finishRecovery()V

    return-void
.end method

.method static synthetic access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private cancelDiscovery()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 452
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    if-nez v0, :cond_0

    .line 453
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Cancelling discovery"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Discovery not running.  Won\'t cancel it"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "DiscoveryCanceller sleep interrupted."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private finishRecovery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Recovery attempt finished"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iput-boolean v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 313
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getCrashRiskDeviceCount()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x636

    return v0
.end method

.method private loadState()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 403
    const/4 v1, 0x0

    .line 406
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v2, "BluetoothCrashResolverState.txt"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 407
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_0

    .line 411
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_1

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 417
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_2

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 421
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_3

    .line 423
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 424
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 430
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 431
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    :goto_1
    :try_start_2
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Can\'t read macs from %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BluetoothCrashResolverState.txt"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    if-eqz v0, :cond_4

    .line 442
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 446
    :cond_4
    :goto_2
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Read %s bluetooth addresses"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    return-void

    .line 440
    :cond_5
    if-eqz v0, :cond_4

    .line 442
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 443
    :catch_1
    move-exception v0

    goto :goto_2

    .line 436
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 437
    :goto_3
    :try_start_5
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Can\'t parse file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BluetoothCrashResolverState.txt"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 440
    if-eqz v0, :cond_4

    .line 442
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 443
    :catch_3
    move-exception v0

    goto :goto_2

    .line 440
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    .line 442
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 443
    :cond_6
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    .line 440
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 436
    :catch_6
    move-exception v1

    goto :goto_3

    .line 434
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private processStateChange()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    invoke-interface {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;->dataUpdated()V

    .line 270
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 271
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    .line 273
    :cond_1
    return-void
.end method

.method private saveState()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    const/4 v0, 0x0

    .line 372
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 375
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v2, "BluetoothCrashResolverState.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 376
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    if-eqz v0, :cond_1

    const-string v0, "1\n"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 382
    :try_start_2
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 384
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 387
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 388
    :goto_2
    :try_start_4
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Can\'t write macs to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BluetoothCrashResolverState.txt"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 391
    if-eqz v0, :cond_0

    .line 393
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 397
    :cond_0
    :goto_3
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Wrote %s bluetooth addresses"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return-void

    .line 380
    :cond_1
    :try_start_6
    const-string v0, "0\n"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 386
    :cond_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 391
    if-eqz v1, :cond_0

    .line 393
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 394
    :catch_1
    move-exception v0

    goto :goto_3

    .line 391
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_3

    .line 393
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 394
    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 391
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 387
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private startRecovery()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 280
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 281
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "about to check if discovery is active"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Recovery attempt started"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iput-boolean v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 285
    iput-boolean v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 286
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "about to command discovery"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Can\'t start discovery.  Is bluetooth turned on?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_0
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "startDiscovery commanded.  isDiscovering()=%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "We will be cancelling this discovery in %s milliseconds."

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->cancelDiscovery()V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Already discovering.  Recovery attempt abandoned."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public crashDetected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 205
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Ignoring crashes before SDK 18, because BLE is unsupported."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "BluetoothService crash detected"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Distinct bluetooth devices seen at crash: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 214
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 215
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 217
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-eqz v0, :cond_2

    .line 218
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Ignoring bluetooth crash because recovery is already in progress."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_1
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    goto :goto_1
.end method

.method public disableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public enableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public forceFlush()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 254
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    .line 255
    return-void
.end method

.method public getDetectedCrashCount()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    return v0
.end method

.method public getLastBluetoothCrashDetectionTime()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    return-wide v0
.end method

.method public getRecoveryAttemptCount()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    return v0
.end method

.method public isLastRecoverySucceeded()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    return v0
.end method

.method public isRecoveryInProgress()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method public notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 182
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 187
    if-eq v0, v1, :cond_0

    rem-int/lit8 v0, v1, 0x64

    if-nez v0, :cond_0

    .line 188
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Distinct bluetooth devices seen: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->getCrashRiskDeviceCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 191
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-nez v0, :cond_1

    .line 192
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Large number of bluetooth devices detected: %s Proactively attempting to clear out address list to prevent a crash"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Stopping LE Scan"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 197
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 198
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    .line 201
    :cond_1
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setUpdateNotifier(Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    .line 247
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "started listening for BluetoothAdapter events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "stopped listening for BluetoothAdapter events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    .line 132
    return-void
.end method
