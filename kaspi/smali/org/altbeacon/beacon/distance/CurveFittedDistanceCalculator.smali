.class public Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;
.super Ljava/lang/Object;
.source "CurveFittedDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# static fields
.field public static final TAG:Ljava/lang/String; = "CurveFittedDistanceCalculator"


# instance fields
.field private mCoefficient1:D

.field private mCoefficient2:D

.field private mCoefficient3:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    .line 33
    iput-wide p3, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    .line 34
    iput-wide p5, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    .line 35
    return-void
.end method


# virtual methods
.method public calculateDistance(ID)D
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 47
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 48
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 63
    :goto_0
    return-wide v0

    .line 51
    :cond_0
    const-string v0, "CurveFittedDistanceCalculator"

    const-string v1, "calculating distance based on mRssi of %s and txPower of %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    mul-double v0, p2, v4

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 56
    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    .line 57
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 62
    :goto_1
    const-string v2, "CurveFittedDistanceCalculator"

    const-string v3, "avg mRssi: %s distance: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-wide v2, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    iget-wide v4, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    add-double/2addr v0, v2

    goto :goto_1
.end method
