.class final Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;
.super Ljava/lang/Object;
.source "BufferingInput.java"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final capacity:I

.field private markPosition:I

.field private readPosition:I

.field private writePosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->capacity:I

    .line 47
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 48
    return-void
.end method

.method private ensureLoaded(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 189
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->markPosition:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->capacity:I

    if-le v1, v2, :cond_0

    .line 190
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    sub-int/2addr v1, v2

    sub-int v1, p2, v1

    .line 194
    if-lez v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    invoke-interface {p1, v2, v3, v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 200
    :cond_1
    :goto_0
    return v0

    .line 198
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    goto :goto_0
.end method

.method private readInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->ensureLoaded(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_0
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public drainToOutput(Lcom/google/android/exoplayer/extractor/TrackOutput;I)I
    .locals 2

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 118
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    goto :goto_0
.end method

.method public getAvailableByteCount()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParsableByteArray(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Lcom/google/android/exoplayer/util/ParsableByteArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->ensureLoaded(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 98
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 99
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 100
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    .line 101
    return-object v0
.end method

.method public mark()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->capacity:I

    if-le v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->buffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    .line 66
    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    .line 68
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->markPosition:I

    .line 69
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 153
    :cond_0
    return-void
.end method

.method public readAllowingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    .line 53
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->writePosition:I

    .line 54
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->markPosition:I

    .line 55
    return-void
.end method

.method public returnToMark()V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->markPosition:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readPosition:I

    .line 74
    return-void
.end method

.method public skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 136
    :cond_0
    return-void
.end method
