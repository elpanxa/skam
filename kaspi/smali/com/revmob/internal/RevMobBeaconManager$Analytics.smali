.class Lcom/revmob/internal/RevMobBeaconManager$Analytics;
.super Ljava/lang/Object;
.source "RevMobBeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/internal/RevMobBeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Analytics"
.end annotation


# instance fields
.field distance:I

.field lastRequest:D

.field lastSample:D

.field requestFreq:I

.field sampleFreq:I

.field final synthetic this$0:Lcom/revmob/internal/RevMobBeaconManager;

.field timeout:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/internal/RevMobBeaconManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/revmob/internal/RevMobBeaconManager$Analytics;->this$0:Lcom/revmob/internal/RevMobBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
