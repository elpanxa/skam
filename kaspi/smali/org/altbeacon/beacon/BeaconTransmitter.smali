.class public Lorg/altbeacon/beacon/BeaconTransmitter;
.super Ljava/lang/Object;
.source "BeaconTransmitter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final NOT_SUPPORTED_BLE:I = 0x2

.field public static final NOT_SUPPORTED_CANNOT_GET_ADVERTISER:I = 0x4

.field public static final NOT_SUPPORTED_CANNOT_GET_ADVERTISER_MULTIPLE_ADVERTISEMENTS:I = 0x5

.field public static final NOT_SUPPORTED_MIN_SDK:I = 0x1

.field public static final NOT_SUPPORTED_MULTIPLE_ADVERTISEMENTS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeaconTransmitter"


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAdvertiseMode:I

.field private mAdvertiseTxPowerLevel:I

.field private mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBeacon:Lorg/altbeacon/beacon/Beacon;

.field private mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconParser;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v4, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    .line 52
    iput-object p2, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    .line 53
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 58
    const-string v0, "BeaconTransmitter"

    const-string v1, "new BeaconTransmitter constructed.  mbluetoothLeAdvertiser is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "BeaconTransmitter"

    const-string v1, "Failed to get BluetoothManager"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/BeaconTransmitter;)Landroid/bluetooth/le/AdvertiseCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    return-object v0
.end method

.method static synthetic access$102(Lorg/altbeacon/beacon/BeaconTransmitter;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    return p1
.end method

.method public static checkTransmissionSupported(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 222
    const/4 v2, 0x0

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const/4 v0, 0x2

    goto :goto_0

    .line 233
    :cond_1
    :try_start_0
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-nez v0, :cond_3

    .line 234
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 235
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    move v0, v1

    .line 238
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    move v0, v1

    .line 242
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lorg/altbeacon/beacon/BeaconTransmitter$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconTransmitter$1;-><init>(Lorg/altbeacon/beacon/BeaconTransmitter;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    return-object v0
.end method

.method private static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 292
    .line 297
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 299
    if-nez p0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    array-length v0, p0

    .line 303
    if-eq v0, v6, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_1

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuidBytes length invalid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    if-ne v0, v5, :cond_2

    .line 309
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 311
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 312
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 328
    :goto_0
    return-object v0

    .line 317
    :cond_2
    if-ne v0, v6, :cond_3

    .line 318
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 319
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 326
    :goto_1
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    add-long/2addr v4, v0

    .line 327
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 328
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 321
    :cond_3
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 322
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 323
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 324
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_1
.end method


# virtual methods
.method public getAdvertiseMode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    return v0
.end method

.method public getAdvertiseTxPowerLevel()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    return v0
.end method

.method public setAdvertiseMode(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    .line 106
    return-void
.end method

.method public setAdvertiseTxPowerLevel(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    .line 125
    return-void
.end method

.method public setBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 80
    return-void
.end method

.method public setBeaconParser(Lorg/altbeacon/beacon/BeaconParser;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    .line 88
    return-void
.end method

.method public startAdvertising()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Beacon cannot be null.  Set beacon before starting advertising"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getManufacturer()I

    move-result v3

    .line 153
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getServiceUuid()I

    move-result v4

    .line 155
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must supply a BeaconParser instance to BeaconTransmitter."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeaconParser:Lorg/altbeacon/beacon/BeaconParser;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0, v2}, Lorg/altbeacon/beacon/BeaconParser;->getBeaconAdvertisementData(Lorg/altbeacon/beacon/Beacon;)[B

    move-result-object v5

    .line 160
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 161
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%02X"

    new-array v7, v9, [Ljava/lang/Object;

    aget-byte v8, v5, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    const-string v6, "BeaconTransmitter"

    const-string v7, "Starting advertising with ID1: %s ID2: %s ID3: %s and data: %s of size %s"

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    aput-object v0, v8, v1

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_3

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    :goto_1
    aput-object v0, v8, v9

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    :goto_2
    aput-object v0, v8, v10

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :try_start_0
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 173
    if-lez v4, :cond_5

    .line 174
    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    const/4 v3, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 177
    invoke-static {v2}, Lorg/altbeacon/beacon/BeaconTransmitter;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v2, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 184
    :goto_3
    new-instance v2, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 186
    iget v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseMode:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 188
    iget v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertiseTxPowerLevel:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 191
    iget-object v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 192
    const-string v0, "BeaconTransmitter"

    const-string v2, "Started advertisement with callback: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_4
    return-void

    .line 165
    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 181
    :cond_5
    :try_start_1
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v2, "BeaconTransmitter"

    const-string v3, "Cannot start advertising due to exception"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public startAdvertising(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/altbeacon/beacon/BeaconTransmitter;->startAdvertising(Lorg/altbeacon/beacon/Beacon;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 133
    return-void
.end method

.method public startAdvertising(Lorg/altbeacon/beacon/Beacon;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 141
    iput-object p2, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 142
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->startAdvertising()V

    .line 143
    return-void
.end method

.method public stopAdvertising()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    if-nez v0, :cond_0

    .line 204
    const-string v0, "BeaconTransmitter"

    const-string v1, "Skipping stop advertising -- not started"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "BeaconTransmitter"

    const-string v1, "Stopping advertising with object %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mAdvertisingClientCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 209
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconTransmitter;->getAdvertiseCallback()Landroid/bluetooth/le/AdvertiseCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 210
    iput-boolean v4, p0, Lorg/altbeacon/beacon/BeaconTransmitter;->mStarted:Z

    goto :goto_0
.end method
