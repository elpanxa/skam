.class Lorg/altbeacon/beacon/service/BeaconService$ScanData;
.super Ljava/lang/Object;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanData"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field rssi:I

.field scanRecord:[B

.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 414
    iput p3, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->rssi:I

    .line 415
    iput-object p4, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->scanRecord:[B

    .line 416
    return-void
.end method
