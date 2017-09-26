.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IfrParserBuffer"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NOT_SET:I = -0x1


# instance fields
.field private ifrData:[B

.field private ifrLength:I

.field private isFilling:Z

.field private final scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sliceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    .line 340
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 341
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 342
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    sub-int v0, p3, p2

    .line 383
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrData:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->peekExpGolombCodedNumLength()I

    move-result v0

    .line 392
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->peekExpGolombCodedNumLength()I

    move-result v0

    .line 400
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->scratchSliceType:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    goto :goto_0
.end method

.method public getSliceType()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->ifrLength:I

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->sliceType:I

    .line 351
    return-void
.end method

.method public startNalUnit(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 365
    if-ne p1, v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->reset()V

    .line 367
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$IfrParserBuffer;->isFilling:Z

    .line 369
    :cond_0
    return-void
.end method
