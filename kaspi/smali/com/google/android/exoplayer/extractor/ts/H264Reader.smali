.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_TYPE_ALL_I:I = 0x7

.field private static final FRAME_TYPE_I:I = 0x2

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_IFR:I = 0x1

.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "H264Reader"


# instance fields
.field private foundFirstSample:Z

.field private hasOutputFormat:Z

.field private final ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

.field private isKeyframe:Z

.field private final pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private final sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 74
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;-><init>()V

    goto :goto_0
.end method

.method private feedNalUnitTargetBuffersData([BII)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->appendToNalUnit([BII)V

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 186
    return-void
.end method

.method private feedNalUnitTargetBuffersStart(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->startNalUnit(I)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 175
    return-void
.end method

.method private feedNalUnitTargetEnd(JI)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 197
    :cond_0
    return-void
.end method

.method private parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V
    .locals 12

    .prologue
    .line 200
    iget v0, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-array v0, v0, [B

    .line 201
    iget v1, p2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-array v1, v1, [B

    .line 202
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v2, p2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p2, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    .line 210
    new-instance v6, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 211
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 212
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 213
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 214
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 216
    const/4 v0, 0x1

    .line 217
    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x56

    if-eq v1, v2, :cond_0

    const/16 v2, 0x76

    if-eq v1, v2, :cond_0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_6

    .line 220
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 221
    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 222
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 224
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 225
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 227
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/16 v0, 0x8

    .line 230
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 231
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 232
    if-eqz v1, :cond_2

    .line 233
    const/4 v1, 0x6

    if-ge v3, v1, :cond_4

    const/16 v1, 0x10

    :goto_2
    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 230
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 229
    :cond_3
    const/16 v0, 0xc

    goto :goto_0

    .line 233
    :cond_4
    const/16 v1, 0x40

    goto :goto_2

    :cond_5
    move v0, v2

    .line 239
    :cond_6
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 240
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    int-to-long v2, v1

    .line 241
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 242
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 252
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 255
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 256
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 257
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 258
    if-eqz v8, :cond_c

    const/4 v1, 0x1

    :goto_3
    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v3

    .line 259
    if-nez v8, :cond_8

    .line 260
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 263
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 264
    mul-int/lit8 v4, v2, 0x10

    .line 265
    mul-int/lit8 v5, v1, 0x10

    .line 266
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 267
    if-eqz v1, :cond_9

    .line 268
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 269
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 270
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 271
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 273
    if-nez v0, :cond_e

    .line 274
    const/4 v1, 0x1

    .line 275
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_4
    rsub-int/lit8 v0, v0, 0x2

    .line 282
    :goto_5
    add-int v2, v3, v9

    mul-int/2addr v1, v2

    sub-int/2addr v4, v1

    .line 283
    add-int v1, v10, v11

    mul-int/2addr v0, v1

    sub-int/2addr v5, v0

    .line 286
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 288
    if-eqz v1, :cond_14

    .line 289
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 290
    if-eqz v1, :cond_14

    .line 291
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 292
    const/16 v2, 0xff

    if-ne v1, v2, :cond_12

    .line 293
    const/16 v1, 0x10

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 294
    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 295
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 296
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_a
    move v6, v0

    .line 306
    :goto_6
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const-string v0, "video/avc"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 309
    return-void

    .line 243
    :cond_b
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 245
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 246
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 247
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    int-to-long v2, v1

    .line 248
    const/4 v1, 0x0

    :goto_7
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-gez v4, :cond_7

    .line 249
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 258
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 275
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 277
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v1, 0x1

    .line 278
    :goto_8
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x2

    move v2, v0

    .line 280
    :goto_9
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_a
    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    goto :goto_5

    .line 277
    :cond_f
    const/4 v1, 0x2

    goto :goto_8

    .line 278
    :cond_10
    const/4 v0, 0x1

    move v2, v0

    goto :goto_9

    .line 280
    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    .line 298
    :cond_12
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 299
    sget-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v1

    move v6, v0

    goto :goto_6

    .line 301
    :cond_13
    const-string v2, "H264Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v6, v0

    goto :goto_6
.end method

.method private skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 312
    .line 314
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, p2, :cond_2

    .line 315
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    .line 317
    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    .line 319
    :cond_0
    if-nez v1, :cond_1

    .line 314
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 319
    goto :goto_1

    .line 321
    :cond_2
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 18

    .prologue
    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_a

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v12

    .line 100
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 103
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 107
    :goto_0
    if-ge v4, v12, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v13, v4, v12, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v14

    .line 109
    if-ge v14, v12, :cond_9

    .line 114
    sub-int v15, v14, v4

    .line 115
    if-lez v15, :cond_1

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    .line 119
    :cond_1
    invoke-static {v13, v14}, Lcom/google/android/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v16

    .line 120
    sub-int v10, v12, v14

    .line 121
    sparse-switch v16, :sswitch_data_0

    .line 148
    :goto_1
    if-gez v15, :cond_8

    neg-int v4, v15

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetEnd(JI)V

    .line 150
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersStart(I)V

    .line 152
    add-int/lit8 v4, v14, 0x3

    .line 153
    goto :goto_0

    .line 123
    :sswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto :goto_1

    .line 126
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    if-eqz v4, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->getSliceType()I

    move-result v4

    .line 129
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x7

    if-ne v4, v6, :cond_6

    :cond_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 132
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;)V

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    if-eqz v4, :cond_7

    const/4 v8, 0x1

    .line 136
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    sub-int v9, v4, v10

    .line 137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 139
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 140
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v6, v10

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->samplePosition:J

    .line 141
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sampleTimeUs:J

    .line 142
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->isKeyframe:Z

    goto/16 :goto_1

    .line 129
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 135
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 148
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 154
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v12}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->feedNalUnitTargetBuffersData([BII)V

    move v4, v12

    .line 155
    goto/16 :goto_0

    .line 159
    :cond_a
    return-void

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->seek()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->ifrParserBuffer:Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->foundFirstSample:Z

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 93
    return-void
.end method
