.class Lcom/revmob/internal/RevMobBeaconManager$1;
.super Ljava/lang/Object;
.source "RevMobBeaconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/internal/RevMobBeaconManager;->collectData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/internal/RevMobBeaconManager;


# direct methods
.method constructor <init>(Lcom/revmob/internal/RevMobBeaconManager;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/revmob/internal/RevMobBeaconManager$1;->this$0:Lcom/revmob/internal/RevMobBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/revmob/internal/RevMobBeaconManager$1;->this$0:Lcom/revmob/internal/RevMobBeaconManager;

    # getter for: Lcom/revmob/internal/RevMobBeaconManager;->beaconData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/revmob/internal/RevMobBeaconManager;->access$000(Lcom/revmob/internal/RevMobBeaconManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    return-void
.end method
