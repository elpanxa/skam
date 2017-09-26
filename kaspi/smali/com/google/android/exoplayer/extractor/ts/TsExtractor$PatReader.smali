.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 250
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 251
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 6

    .prologue
    const/16 v2, 0xc

    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 264
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 272
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 274
    add-int/lit8 v0, v0, -0x9

    div-int/lit8 v1, v0, 0x4

    .line 275
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 276
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 277
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 278
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
