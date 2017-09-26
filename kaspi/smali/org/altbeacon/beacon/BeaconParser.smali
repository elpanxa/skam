.class public Lorg/altbeacon/beacon/BeaconParser;
.super Ljava/lang/Object;
.source "BeaconParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;
    }
.end annotation


# static fields
.field private static final D_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_ARRAY:[C

.field private static final I_PATTERN:Ljava/util/regex/Pattern;

.field private static final M_PATTERN:Ljava/util/regex/Pattern;

.field private static final P_PATTERN:Ljava/util/regex/Pattern;

.field private static final S_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BeaconParser"


# instance fields
.field protected mDataEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHardwareAssistManufacturers:[I

.field protected mIdentifierEndOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIdentifierLittleEndianFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mIdentifierStartOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchingBeaconTypeCode:Ljava/lang/Long;

.field protected mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

.field protected mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

.field protected mPowerEndOffset:Ljava/lang/Integer;

.field protected mPowerStartOffset:Ljava/lang/Integer;

.field protected mServiceUuid:Ljava/lang/Long;

.field protected mServiceUuidEndOffset:Ljava/lang/Integer;

.field protected mServiceUuidStartOffset:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "i\\:(\\d+)\\-(\\d+)(l?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "m\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "s\\:(\\d+)-(\\d+)\\=([0-9A-Fa-f]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "d\\:(\\d+)\\-(\\d+)([bl]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "p\\:(\\d+)\\-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput v2, v0, v1

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    .line 70
    return-void
.end method

.method private byteArrayToFormattedString([BIIZ)Ljava/lang/String;
    .locals 12

    .prologue
    .line 579
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    .line 580
    if-eqz p4, :cond_0

    .line 581
    const/4 v0, 0x0

    :goto_0
    sub-int v2, p3, p2

    if-gt v0, v2, :cond_1

    .line 582
    array-length v2, v1

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sub-int v2, p3, p2

    if-gt v0, v2, :cond_1

    .line 587
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    :cond_1
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 594
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 595
    const-wide/16 v2, 0x0

    .line 596
    const/4 v0, 0x0

    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 597
    array-length v4, v1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    .line 598
    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    int-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    .line 599
    mul-long/2addr v4, v6

    .line 600
    add-long/2addr v2, v4

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 602
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_3
    return-object v0

    .line 606
    :cond_3
    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 609
    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const/16 v2, 0x10

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const/16 v2, 0x14

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 622
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 571
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 572
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private byteArraysMatch([BI[BI)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 561
    array-length v0, p1

    array-length v2, p3

    if-le v0, v2, :cond_0

    array-length v0, p3

    :goto_0
    move v2, v1

    .line 562
    :goto_1
    if-ge v2, v0, :cond_2

    .line 563
    add-int v3, v2, p2

    aget-byte v3, p1, v3

    add-int v4, v2, p4

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_1

    move v0, v1

    .line 567
    :goto_2
    return v0

    .line 561
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 562
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 532
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 534
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 535
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 536
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 537
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/altbeacon/beacon/BeaconParser;->HEX_ARRAY:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static longToByteArray(JI)[B
    .locals 6

    .prologue
    .line 549
    new-array v1, p2, [B

    .line 550
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 552
    const-wide/16 v2, 0xff

    sub-int v4, p2, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    shl-long/2addr v2, v4

    .line 553
    sub-int v4, p2, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    .line 554
    and-long/2addr v2, p0

    long-to-int v4, v4

    shr-long/2addr v2, v4

    .line 555
    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    return-object v1
.end method


# virtual methods
.method public fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lorg/altbeacon/beacon/Beacon;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v0

    return-object v0
.end method

.method protected fromScanData([BILandroid/bluetooth/BluetoothDevice;Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    const/4 v0, 0x5

    .line 326
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v8, v9, v2}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JI)[B

    move-result-object v7

    .line 327
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 328
    const/16 v2, 0xb

    .line 329
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-static {v8, v9, v0}, Lorg/altbeacon/beacon/BeaconParser;->longToByteArray(JI)[B

    move-result-object v0

    :goto_0
    move v5, v6

    .line 334
    :goto_1
    if-gt v5, v2, :cond_b

    .line 335
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_1

    .line 336
    iget-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, p1, v8, v7, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[BI)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v4

    .line 351
    :goto_2
    if-nez v2, :cond_4

    .line 353
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getServiceUuid()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    .line 354
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "BeaconParser"

    const-string v2, "This is not a matching Beacon advertisement. (Was expecting %s.  The bytes I see are: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v0, v2, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_0
    :goto_3
    return-object v1

    .line 342
    :cond_1
    iget-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, p1, v8, v0, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[BI)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, p1, v8, v7, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArraysMatch([BI[BI)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v4

    .line 345
    goto :goto_2

    .line 348
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    :cond_3
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const-string v2, "BeaconParser"

    const-string v5, "This is not a matching Beacon advertisement. (Was expecting %s and %s.  The bytes I see are: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-direct {p0, v7}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconParser;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v2, v5, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 373
    :cond_4
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    const-string v0, "BeaconParser"

    const-string v2, "This is a recognized beacon advertisement -- %s seen"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v2, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 380
    :goto_4
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 381
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v7, v0, v5

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    add-int/lit8 v8, v0, 0x1

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v7, v8, v0}, Lorg/altbeacon/beacon/Identifier;->fromBytes([BIIZ)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    .line 382
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 384
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 385
    :goto_5
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 386
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, v0, v5

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v9, v0, v5

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v8, v9, v0}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 392
    :cond_7
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 395
    const/16 v2, 0x7f

    if-le v0, v2, :cond_8

    .line 396
    add-int/lit16 v0, v0, -0x100

    .line 402
    :cond_8
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    iget-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, p1, v2, v8, v3}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 407
    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, p1, v5, v2, v4}, Lorg/altbeacon/beacon/BeaconParser;->byteArrayToFormattedString([BIIZ)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 412
    if-eqz p3, :cond_a

    .line 413
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 417
    :goto_6
    iput-object v6, p4, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 418
    iput-object v7, p4, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 419
    iput v0, p4, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 420
    iput p2, p4, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 421
    iput v3, p4, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 422
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v0, v6

    iput v0, p4, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 429
    :goto_7
    iput-object v2, p4, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 430
    iput-object v1, p4, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 431
    iput v4, p4, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    move-object v1, p4

    .line 432
    goto/16 :goto_3

    .line 426
    :cond_9
    const/4 v0, -0x1

    iput v0, p4, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    goto :goto_7

    :cond_a
    move-object v2, v1

    goto :goto_6

    :cond_b
    move v2, v3

    goto/16 :goto_2

    :cond_c
    move v2, v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getBeaconAdvertisementData(Lorg/altbeacon/beacon/Beacon;)[B
    .locals 12

    .prologue
    const-wide/16 v10, 0xff

    const/4 v2, 0x0

    .line 443
    const/4 v0, -0x1

    .line 444
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 447
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 448
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    move v1, v2

    move v3, v0

    .line 450
    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 451
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 452
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 450
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 455
    :goto_1
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 456
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 457
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 455
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 461
    :cond_5
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v0, v0, -0x2

    new-array v4, v0, [B

    .line 462
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 465
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 466
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconParser;->getMatchingBeaconTypeCode()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    shr-long/2addr v6, v1

    and-long/2addr v6, v10

    long-to-int v1, v6

    int-to-byte v1, v1

    .line 467
    add-int/lit8 v3, v0, -0x2

    aput-byte v1, v4, v3

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    .line 471
    :goto_3
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 472
    invoke-virtual {p1, v1}, Lorg/altbeacon/beacon/Beacon;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/altbeacon/beacon/Identifier;->toByteArrayOfSpecifiedEndianness(Z)[B

    move-result-object v5

    .line 473
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    :goto_4
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v3, v0, :cond_8

    .line 474
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    .line 475
    array-length v6, v5

    if-ge v0, v6, :cond_7

    .line 476
    add-int/lit8 v6, v3, -0x2

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    aget-byte v0, v5, v0

    aput-byte v0, v4, v6

    .line 473
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 479
    :cond_7
    add-int/lit8 v0, v3, -0x2

    aput-byte v2, v4, v0

    goto :goto_5

    .line 471
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 485
    :cond_9
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 486
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getTxPower()I

    move-result v3

    iget-object v5, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v0, v5

    mul-int/lit8 v5, v5, 0x8

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 490
    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 491
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDataFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 492
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_a

    .line 494
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 495
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    .line 497
    :goto_8
    add-int/lit8 v3, v0, -0x2

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    mul-int/lit8 v0, v0, 0x8

    shr-long v8, v6, v0

    and-long/2addr v8, v10

    long-to-int v0, v8

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 500
    :cond_c
    return-object v4

    :cond_d
    move v0, v1

    goto :goto_8
.end method

.method public getDataFieldCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHardwareAssistManufacturers()[I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    return-object v0
.end method

.method public getIdentifierByteCount(I)I
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getIdentifierCount()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMServiceUuidStartOffset()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchingBeaconTypeCode()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    return-object v0
.end method

.method public getMatchingBeaconTypeCodeEndOffset()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchingBeaconTypeCodeStartOffset()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServiceUuid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;

    return-object v0
.end method

.method public getServiceUuidEndOffset()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setBeaconLayout(Ljava/lang/String;)Lorg/altbeacon/beacon/BeaconParser;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x3

    const/4 v2, 0x1

    .line 131
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 133
    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 136
    sget-object v0, Lorg/altbeacon/beacon/BeaconParser;->I_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v0, v1

    .line 137
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 142
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "l"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 143
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierLittleEndianFlags:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v9, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse integer byte offset in term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->D_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 151
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 154
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 156
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "l"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 157
    iget-object v10, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataLittleEndianFlags:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v9, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataStartOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mDataEndOffsets:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 162
    goto :goto_2

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse integer byte offset in term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->P_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 165
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    .line 171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 174
    goto :goto_3

    .line 172
    :catch_2
    move-exception v0

    .line 173
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse integer power byte offset in term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->M_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 177
    :goto_4
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    .line 183
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v2

    .line 194
    goto :goto_4

    .line 184
    :catch_3
    move-exception v0

    .line 185
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse integer byte offset in term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catch_4
    move-exception v1

    .line 192
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse beacon type code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in term: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_3
    sget-object v7, Lorg/altbeacon/beacon/BeaconParser;->S_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 196
    :goto_5
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 199
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidStartOffset:Ljava/lang/Integer;

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuidEndOffset:Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 206
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lorg/altbeacon/beacon/BeaconParser;->mServiceUuid:Ljava/lang/Long;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move v0, v2

    .line 213
    goto :goto_5

    .line 203
    :catch_5
    move-exception v0

    .line 204
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse integer byte offset in term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catch_6
    move-exception v1

    .line 211
    new-instance v1, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse serviceUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in term: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_4
    if-nez v0, :cond_5

    .line 216
    const-string v0, "BeaconParser"

    const-string v3, "cannot parse term %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse beacon layout term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 220
    :cond_6
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerStartOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mPowerEndOffset:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 221
    :cond_7
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v1, "You must supply a power byte offset with a prefix of \'p\'"

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_8
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeStartOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCodeEndOffset:Ljava/lang/Integer;

    if-nez v0, :cond_a

    .line 224
    :cond_9
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v1, "You must supply a matching beacon type expression with a prefix of \'m\'"

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_a
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierStartOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconParser;->mIdentifierEndOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 227
    :cond_b
    new-instance v0, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;

    const-string v1, "You must supply at least one identifier offset withh a prefix of \'i\'"

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/BeaconParser$BeaconLayoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_c
    return-object p0
.end method

.method public setHardwareAssistManufacturerCodes([I)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mHardwareAssistManufacturers:[I

    .line 255
    return-void
.end method

.method public setMatchingBeaconTypeCode(Ljava/lang/Long;)Lorg/altbeacon/beacon/BeaconParser;
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconParser;->mMatchingBeaconTypeCode:Ljava/lang/Long;

    .line 505
    return-object p0
.end method
