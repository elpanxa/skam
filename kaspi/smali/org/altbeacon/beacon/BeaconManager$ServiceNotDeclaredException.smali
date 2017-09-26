.class public Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;
.super Ljava/lang/RuntimeException;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceNotDeclaredException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 1

    .prologue
    .line 723
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    .line 724
    const-string v0, "The BeaconService is not properly declared in AndroidManifest.xml.  If using Eclipse, please verify that your project.properties has manifestmerger.enabled=true"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 726
    return-void
.end method
