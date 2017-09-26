.class Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z
    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Bluetooth discovery finished"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # invokes: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->finishRecovery()V
    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 329
    :cond_0
    :goto_0
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z
    invoke-static {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # setter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z
    invoke-static {v1, v4}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z

    .line 332
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Bluetooth discovery started"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_1
    :goto_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 342
    sparse-switch v0, :sswitch_data_0

    .line 365
    :cond_2
    :goto_2
    :sswitch_0
    return-void

    .line 326
    :cond_3
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Bluetooth discovery finished (external)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_4
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Bluetooth discovery started (external)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :sswitch_1
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Bluetooth state is ERROR"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 347
    :sswitch_2
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Bluetooth state is OFF"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J
    invoke-static {v0, v2, v3}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J

    goto :goto_2

    .line 353
    :sswitch_3
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Bluetooth state is ON"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Bluetooth was turned off for %s milliseconds"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J
    invoke-static {v3}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v4

    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J
    invoke-static {v3}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J
    invoke-static {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    # getter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J
    invoke-static {v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 356
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->crashDetected()V

    goto :goto_2

    .line 360
    :sswitch_4
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    # setter for: Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J
    invoke-static {v0, v2, v3}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J

    .line 361
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Bluetooth state is TURNING_ON"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 342
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_0
    .end sparse-switch
.end method
