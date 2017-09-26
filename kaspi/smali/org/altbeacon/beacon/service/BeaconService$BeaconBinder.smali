.class public Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
.super Landroid/os/Binder;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeaconBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/altbeacon/beacon/service/BeaconService;
    .locals 3

    .prologue
    .line 112
    const-string v0, "BeaconService"

    const-string v1, "getService of BeaconBinder called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    return-object v0
.end method
