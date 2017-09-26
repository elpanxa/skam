.class public Lorg/altbeacon/beacon/service/RangingData;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/service/RangingData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RangingData"


# instance fields
.field private beacons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private region:Lorg/altbeacon/beacon/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/altbeacon/beacon/service/RangingData$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/RangingData$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v1, "RangingData"

    const-string v2, "parsing RangingData"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    move v1, v0

    .line 83
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 84
    iget-object v3, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    aget-object v0, v2, v1

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/RangingData$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iput-object p2, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getBeacons()Ljava/util/Collection;
    .locals 1
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
    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    return-object v0
.end method

.method public getRegion()Lorg/altbeacon/beacon/Region;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "RangingData"

    const-string v1, "writing RangingData"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    new-array v1, v3, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 63
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    const-string v0, "RangingData"

    const-string v1, "done writing RangingData"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method
