.class Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;
.super Ljava/lang/Object;
.source "RangedBeacon.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/RangedBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Measurement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;",
        ">;"
    }
.end annotation


# instance fields
.field rssi:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/altbeacon/beacon/service/RangedBeacon;

.field timestamp:J


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/service/RangedBeacon;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->this$0:Lorg/altbeacon/beacon/service/RangedBeacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/service/RangedBeacon;Lorg/altbeacon/beacon/service/RangedBeacon$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;-><init>(Lorg/altbeacon/beacon/service/RangedBeacon;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->compareTo(Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;)I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    iget-object v1, p1, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
