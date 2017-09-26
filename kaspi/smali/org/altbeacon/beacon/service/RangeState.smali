.class public Lorg/altbeacon/beacon/service/RangeState;
.super Ljava/lang/Object;
.source "RangeState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RangeState"


# instance fields
.field private mCallback:Lorg/altbeacon/beacon/service/Callback;

.field private mRangedBeacons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            "Lorg/altbeacon/beacon/service/RangedBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    .line 43
    return-void
.end method


# virtual methods
.method public addBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 53
    const-string v1, "RangeState"

    const-string v2, "adding %s to existing range for: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "RangeState"

    const-string v1, "adding %s to new rangedBeacon"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    new-instance v1, Lorg/altbeacon/beacon/service/RangedBeacon;

    invoke-direct {v1, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized finalizeBeacons()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v7, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 70
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 71
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangedBeacon;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangedBeacon;->commitMeasurements()V

    .line 73
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangedBeacon;->getBeacon()Lorg/altbeacon/beacon/Beacon;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/service/RangedBeacon;->setTracked(Z)V

    .line 81
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v2, v4

    .line 79
    goto :goto_1

    .line 84
    :cond_2
    :try_start_3
    const-string v0, "RangeState"

    const-string v1, "Dumping beacon from RangeState because it has no recent measurements."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_3
    iput-object v5, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 88
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    monitor-exit p0

    return-object v6
.end method

.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method
