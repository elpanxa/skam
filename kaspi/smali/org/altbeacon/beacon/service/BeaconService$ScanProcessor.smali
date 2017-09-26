.class Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;
.super Landroid/os/AsyncTask;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/altbeacon/beacon/service/BeaconService$ScanData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 423
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/service/BeaconService$1;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    check-cast p1, [Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->doInBackground([Lorg/altbeacon/beacon/service/BeaconService$ScanData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/altbeacon/beacon/service/BeaconService$ScanData;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 427
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 430
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # getter for: Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/List;
    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$500(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconParser;

    .line 431
    iget-object v4, v2, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->scanRecord:[B

    iget v5, v2, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->rssi:I

    iget-object v6, v2, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, v5, v6}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 437
    :cond_1
    if-eqz v0, :cond_2

    .line 438
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->mDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/DetectionTracker;->recordDetection()V

    .line 439
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    # invokes: Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    invoke-static {v2, v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    .line 441
    :cond_2
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 422
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 422
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method
