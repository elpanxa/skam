.class final Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public definesEncryptionData:Z

.field public length:I

.field public sampleCompositionTimeOffsetTable:[I

.field public sampleDecodingTimeTable:[J

.field public sampleDescriptionIndex:I

.field public sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field public sampleEncryptionDataLength:I

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public sampleSizeTable:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 134
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 135
    return-void
.end method

.method public fillEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 145
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 146
    return-void
.end method

.method public getSamplePresentationTime(I)J
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public initEncryptionData(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 119
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 121
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    .line 122
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 123
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 124
    return-void
.end method

.method public initTables(I)V
    .locals 2

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ge v0, v1, :cond_1

    .line 99
    :cond_0
    mul-int/lit8 v0, p1, 0x7d

    div-int/lit8 v0, v0, 0x64

    .line 100
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 101
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 102
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 103
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 104
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 106
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    .line 82
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 83
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 84
    return-void
.end method
