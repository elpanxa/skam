.class final Lcom/google/android/exoplayer/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x14

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "avc1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hvc1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hev1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mp41"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mp42"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3g2a"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "3g2b"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3gr6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3gs6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3ge6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3gg6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M4V "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M4A "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f4v "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "kddi"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4VP"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "qt  "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MSNV"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    ushr-int/lit8 v2, p0, 0x8

    const-string v3, "3gp"

    invoke-static {v3}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget v5, v3, v2

    .line 149
    if-eq v5, p0, :cond_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 85
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move/from16 v0, p1

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    :cond_0
    move/from16 v0, p1

    int-to-long v2, v0

    :cond_1
    long-to-int v9, v2

    .line 88
    new-instance v10, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v2, 0x40

    invoke-direct {v10, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v3, 0x0

    move v8, v4

    .line 92
    :goto_0
    if-ge v8, v9, :cond_4

    .line 94
    const/16 v6, 0x8

    .line 95
    iget-object v4, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 98
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 99
    const-wide/16 v12, 0x1

    cmp-long v7, v4, v12

    if-nez v7, :cond_d

    .line 100
    iget-object v4, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v6, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 101
    const/16 v6, 0x10

    .line 102
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    move-wide/from16 v16, v4

    move v4, v6

    move-wide/from16 v6, v16

    .line 105
    :goto_1
    int-to-long v12, v4

    cmp-long v5, v6, v12

    if-ltz v5, :cond_2

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 106
    :cond_2
    const/4 v2, 0x0

    .line 137
    :goto_2
    return v2

    .line 109
    :cond_3
    int-to-long v12, v8

    add-long/2addr v12, v6

    int-to-long v14, v9

    cmp-long v5, v12, v14

    if-lez v5, :cond_5

    .line 137
    :cond_4
    :goto_3
    if-eqz v2, :cond_c

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    const/4 v2, 0x1

    goto :goto_2

    .line 112
    :cond_5
    long-to-int v5, v6

    sub-int v4, v5, v4

    .line 113
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v11, v5, :cond_a

    .line 114
    const/16 v5, 0x8

    if-ge v4, v5, :cond_6

    .line 115
    const/4 v2, 0x0

    goto :goto_2

    .line 117
    :cond_6
    add-int/lit8 v4, v4, -0x8

    div-int/lit8 v5, v4, 0x4

    .line 118
    iget-object v4, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    add-int/lit8 v12, v5, 0x2

    mul-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v11, v12}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 119
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v11, v5, 0x2

    if-ge v4, v11, :cond_9

    .line 120
    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    .line 119
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 124
    :cond_8
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 125
    const/4 v2, 0x1

    .line 135
    :cond_9
    :goto_5
    int-to-long v4, v8

    add-long/2addr v4, v6

    long-to-int v4, v4

    move v8, v4

    .line 136
    goto/16 :goto_0

    .line 129
    :cond_a
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v11, v5, :cond_b

    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_b
    if-eqz v4, :cond_9

    .line 133
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_5

    .line 137
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    move-wide/from16 v16, v4

    move v4, v6

    move-wide/from16 v6, v16

    goto :goto_1
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z

    move-result v0

    return v0
.end method
