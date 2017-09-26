.class public Lorg/altbeacon/beacon/service/RangedBeacon;
.super Ljava/lang/Object;
.source "RangedBeacon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/RangedBeacon$1;,
        Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;
    }
.end annotation


# static fields
.field public static DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "RangedBeacon"

.field private static sampleExpirationMilliseconds:J


# instance fields
.field mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private mTracked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J

    .line 14
    sget-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J

    sput-wide v0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    .line 21
    return-void
.end method

.method private calculateRunningAverage()D
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->refreshMeasurements()V

    .line 92
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 94
    add-int/lit8 v0, v8, -0x1

    .line 95
    if-le v8, v9, :cond_1

    .line 96
    div-int/lit8 v0, v8, 0xa

    add-int/lit8 v1, v0, 0x1

    .line 97
    div-int/lit8 v0, v8, 0xa

    sub-int v0, v8, v0

    add-int/lit8 v0, v0, -0x2

    move v2, v1

    move v1, v0

    .line 100
    :goto_0
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move v4, v2

    .line 101
    :goto_1
    if-gt v4, v1, :cond_0

    .line 102
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    iget-object v0, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v10, v0

    add-double/2addr v6, v10

    .line 101
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 104
    :cond_0
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    div-double v0, v6, v0

    .line 106
    const-string v2, "RangedBeacon"

    const-string v4, "Running average mRssi based on %s measurements: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-wide v0

    :cond_1
    move v1, v0

    move v2, v3

    goto :goto_0
.end method

.method private declared-synchronized refreshMeasurements()V
    .locals 8

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 80
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    .line 82
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->timestamp:J

    sub-long/2addr v4, v6

    sget-wide v6, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 83
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    iput-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    .line 87
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0

    .prologue
    .line 53
    sput-wide p0, Lorg/altbeacon/beacon/service/RangedBeacon;->sampleExpirationMilliseconds:J

    .line 54
    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 57
    new-instance v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;-><init>(Lorg/altbeacon/beacon/service/RangedBeacon;Lorg/altbeacon/beacon/service/RangedBeacon$1;)V

    .line 58
    iput-object p1, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->rssi:Ljava/lang/Integer;

    .line 59
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/altbeacon/beacon/service/RangedBeacon$Measurement;->timestamp:J

    .line 60
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public commitMeasurements()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->calculateRunningAverage()D

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->setRunningAverageRssi(D)V

    .line 45
    const-string v2, "RangedBeacon"

    const-string v3, "calculated new runningAverageRssi: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "RangedBeacon"

    const-string v1, "No measurements available to calculate running average"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBeacon()Lorg/altbeacon/beacon/Beacon;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public isTracked()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTracked(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 34
    return-void
.end method

.method public updateBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1

    .prologue
    .line 24
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 25
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/RangedBeacon;->addMeasurement(Ljava/lang/Integer;)V

    .line 26
    return-void
.end method
