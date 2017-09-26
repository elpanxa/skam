.class Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumerInfo"
.end annotation


# instance fields
.field public isConnected:Z

.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 1

    .prologue
    .line 690
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/BeaconManager$1;)V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    return-void
.end method
