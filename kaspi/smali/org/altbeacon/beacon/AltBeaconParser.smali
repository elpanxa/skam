.class public Lorg/altbeacon/beacon/AltBeaconParser;
.super Lorg/altbeacon/beacon/BeaconParser;
.source "AltBeaconParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AltBeaconParser"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconParser;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x118

    aput v2, v0, v1

    iput-object v0, p0, Lorg/altbeacon/beacon/AltBeaconParser;->mHardwareAssistManufacturers:[I

    .line 45
    const-string v0, "m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25"

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/AltBeaconParser;->setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;

    .line 46
    return-void
.end method


# virtual methods
.method public fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/altbeacon/beacon/AltBeacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/AltBeacon;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/altbeacon/beacon/AltBeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    return-object v0
.end method
