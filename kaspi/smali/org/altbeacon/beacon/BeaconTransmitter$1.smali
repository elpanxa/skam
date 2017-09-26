.class Lorg/altbeacon/beacon/BeaconTransmitter$1;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BeaconTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconTransmitter;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/BeaconTransmitter;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 5

    .prologue
    .line 254
    const-string v0, "BeaconTransmitter"

    const-string v1, "Advertisement start failed, code: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    # getter for: Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    # getter for: Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3

    .prologue
    .line 263
    const-string v0, "BeaconTransmitter"

    const-string v1, "Advertisement start succeeded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    const/4 v1, 0x1

    # setter for: Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$102(Lorg/altbeacon/beacon/BeaconTransmitter;Z)Z

    .line 265
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    # getter for: Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter$1;->this$0:Lorg/altbeacon/beacon/BeaconTransmitter;

    # getter for: Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;
    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 269
    :cond_0
    return-void
.end method
