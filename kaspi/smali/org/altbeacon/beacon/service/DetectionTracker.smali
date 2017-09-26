.class public Lorg/altbeacon/beacon/service/DetectionTracker;
.super Ljava/lang/Object;
.source "DetectionTracker.java"


# static fields
.field private static sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;


# instance fields
.field private mLastDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lorg/altbeacon/beacon/service/DetectionTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lorg/altbeacon/beacon/service/DetectionTracker;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/DetectionTracker;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;

    .line 16
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/service/DetectionTracker;->sDetectionTracker:Lorg/altbeacon/beacon/service/DetectionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLastDetectionTime()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    return-wide v0
.end method

.method public recordDetection()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/DetectionTracker;->mLastDetectionTime:J

    .line 23
    return-void
.end method
