.class public Lorg/altbeacon/beacon/client/NullBeaconDataFactory;
.super Ljava/lang/Object;
.source "NullBeaconDataFactory.java"

# interfaces
.implements Lorg/altbeacon/beacon/client/BeaconDataFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestBeaconData(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/BeaconDataNotifier;)V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 13
    new-instance v1, Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;

    invoke-direct {v1, p0, p2}, Lorg/altbeacon/beacon/client/NullBeaconDataFactory$1;-><init>(Lorg/altbeacon/beacon/client/NullBeaconDataFactory;Lorg/altbeacon/beacon/BeaconDataNotifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method
