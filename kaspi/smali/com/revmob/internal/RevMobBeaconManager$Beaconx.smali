.class Lcom/revmob/internal/RevMobBeaconManager$Beaconx;
.super Ljava/lang/Object;
.source "RevMobBeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/internal/RevMobBeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Beaconx"
.end annotation


# instance fields
.field b:Lorg/altbeacon/beacon/Beacon;

.field final synthetic this$0:Lcom/revmob/internal/RevMobBeaconManager;

.field timeout:D


# direct methods
.method public constructor <init>(Lcom/revmob/internal/RevMobBeaconManager;Lorg/altbeacon/beacon/Beacon;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->this$0:Lcom/revmob/internal/RevMobBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/revmob/internal/RevMobBeaconManager$Beaconx;->b:Lorg/altbeacon/beacon/Beacon;

    .line 56
    return-void
.end method
