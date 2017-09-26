.class public Lorg/altbeacon/beacon/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/Beacon$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Beacon"

.field protected static beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

.field protected static sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;


# instance fields
.field protected mBeaconTypeCode:I

.field protected mBluetoothAddress:Ljava/lang/String;

.field protected mBluetoothName:Ljava/lang/String;

.field protected mDataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDistance:Ljava/lang/Double;

.field protected mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected mManufacturer:I

.field protected mRssi:I

.field private mRunningAverageRssi:Ljava/lang/Double;

.field protected mServiceUuid:I

.field protected mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 104
    new-instance v0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

    invoke-direct {v0}, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

    .line 141
    new-instance v0, Lorg/altbeacon/beacon/Beacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 219
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    move v1, v0

    .line 174
    :goto_0
    if-ge v1, v2, :cond_0

    .line 175
    iget-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 185
    :goto_1
    if-ge v0, v1, :cond_1

    .line 186
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method protected constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 200
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v2, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 204
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 205
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 206
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 207
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBeaconTypeCode()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 209
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 210
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method protected static calculateDistance(ID)Ljava/lang/Double;
    .locals 3

    .prologue
    .line 474
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    .line 478
    :cond_0
    const-string v0, "Beacon"

    const-string v1, "Distance calculator not set.  Distance will bet set to -1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object v0
.end method

.method public static setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V
    .locals 0

    .prologue
    .line 157
    sput-object p0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 386
    instance-of v0, p1, Lorg/altbeacon/beacon/Beacon;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v2

    .line 389
    :cond_1
    check-cast p1, Lorg/altbeacon/beacon/Beacon;

    .line 390
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 394
    :goto_1
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 395
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    iget-object v3, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 399
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBeaconTypeCode()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    return v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()D
    .locals 5

    .prologue
    .line 313
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 314
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    int-to-double v0, v0

    .line 315
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 316
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 321
    :goto_0
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->calculateDistance(ID)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 319
    :cond_1
    const-string v2, "Beacon"

    const-string v3, "Not using running average RSSI because it is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getId1()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getId2()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getId3()Lorg/altbeacon/beacon/Identifier;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    return v0
.end method

.method public getServiceUuid()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const/4 v0, 0x1

    .line 370
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 371
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 377
    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public requestData(Lorg/altbeacon/beacon/BeaconDataNotifier;)V
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lorg/altbeacon/beacon/Beacon;->beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

    invoke-interface {v0, p0, p1}, Lorg/altbeacon/beacon/client/BeaconDataFactory;->requestBeaconData(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/BeaconDataNotifier;)V

    .line 409
    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 237
    return-void
.end method

.method public setRunningAverageRssi(D)V
    .locals 1

    .prologue
    .line 226
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 420
    if-le v1, v2, :cond_0

    .line 421
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_0
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 428
    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 429
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 444
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const-string v0, "Beacon"

    const-string v1, "serializing identifiers of size %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 447
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 450
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 457
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 459
    :cond_2
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    return-void
.end method
