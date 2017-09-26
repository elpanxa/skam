.class public Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;
.super Ljava/lang/Object;
.source "ScanFilterUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public createScanFilterDataForBeaconParser(Lorg/altbeacon/beacon/BeaconParser;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconParser;->getHardwareAssistManufacturers()[I

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    aget v6, v4, v1

    .line 25
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 26
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCodeStartOffset()I

    move-result v7

    .line 27
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCodeEndOffset()I

    move-result v10

    .line 32
    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v0, v0, -0x2

    new-array v11, v0, [B

    .line 33
    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v0, v0, -0x2

    new-array v12, v0, [B

    .line 34
    sub-int v0, v10, v7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v8, v9, v0}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JI)[B

    move-result-object v8

    .line 35
    const/4 v0, 0x2

    :goto_1
    if-gt v0, v10, :cond_1

    .line 36
    add-int/lit8 v9, v0, -0x2

    .line 37
    if-ge v0, v7, :cond_0

    .line 38
    aput-byte v2, v11, v9

    .line 39
    aput-byte v2, v12, v9

    .line 35
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_0
    sub-int v13, v0, v7

    aget-byte v13, v8, v13

    aput-byte v13, v11, v9

    .line 42
    const/4 v13, -0x1

    aput-byte v13, v12, v9

    goto :goto_2

    .line 45
    :cond_1
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;-><init>(Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;)V

    .line 46
    iput v6, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->manufacturer:I

    .line 47
    iput-object v11, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->filter:[B

    .line 48
    iput-object v12, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->mask:[B

    .line 49
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_2
    return-object v3
.end method

.method public createScanFiltersForBeaconParsers(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconParser;

    .line 60
    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;->createScanFilterDataForBeaconParser(Lorg/altbeacon/beacon/BeaconParser;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;

    .line 62
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 63
    iget v5, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->manufacturer:I

    iget-object v6, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->filter:[B

    iget-object v0, v0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->mask:[B

    invoke-virtual {v4, v5, v6, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 64
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    return-object v1
.end method
