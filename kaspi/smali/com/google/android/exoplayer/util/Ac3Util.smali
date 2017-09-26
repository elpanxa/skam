.class public final Lcom/google/android/exoplayer/util/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final BITRATES:[I

.field private static final CHANNEL_COUNTS:[I

.field private static final FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

.field private static final SAMPLE_RATES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATES:[I

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNTS:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->BITRATES:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

    return-void

    .line 26
    :array_0
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 30
    :array_2
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 33
    :array_3
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static getBitrate(II)I
    .locals 3

    .prologue
    .line 140
    mul-int/lit8 v0, p0, 0x8

    mul-int/2addr v0, p1

    .line 141
    const v1, 0x177000

    .line 142
    const v2, 0xbb800

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public static parseAnnexFAc3Format(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 43
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATES:[I

    aget v1, v1, v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 46
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNTS:[I

    and-int/lit8 v3, v2, 0x38

    shr-int/lit8 v3, v3, 0x3

    aget v0, v0, v3

    .line 48
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 51
    :cond_0
    const-string v2, "audio/ac3"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseAnnexFEAc3Format(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 5

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 66
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATES:[I

    aget v1, v1, v0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 69
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNTS:[I

    and-int/lit8 v3, v2, 0xe

    shr-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    .line 71
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_0
    const-string v2, "audio/eac3"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrameAc3Format(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    .line 87
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 90
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 91
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 92
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    if-eq v2, v0, :cond_0

    .line 93
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 95
    :cond_0
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 98
    :cond_1
    if-ne v2, v4, :cond_2

    .line 99
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 102
    const-string v4, "audio/ac3"

    const/4 v5, -0x1

    sget-object v6, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNTS:[I

    aget v2, v6, v2

    if-eqz v3, :cond_3

    :goto_0
    add-int/2addr v0, v2

    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATES:[I

    aget v1, v2, v1

    const/4 v2, 0x0

    invoke-static {v4, v5, v0, v1, v2}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrameSize(Lcom/google/android/exoplayer/util/ParsableBitArray;)I
    .locals 4

    .prologue
    .line 115
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 118
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 119
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATES:[I

    aget v0, v2, v0

    .line 120
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->BITRATES:[I

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 121
    const/16 v3, 0x7d00

    if-ne v0, v3, :cond_0

    .line 122
    mul-int/lit8 v0, v2, 0x6

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_0
    const v3, 0xac44

    if-ne v0, v3, :cond_1

    .line 124
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->FRMSIZECOD_TO_FRAME_SIZE_44_1:[I

    div-int/lit8 v2, v1, 0x2

    aget v0, v0, v2

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 126
    :cond_1
    mul-int/lit8 v0, v2, 0x4

    goto :goto_0
.end method
