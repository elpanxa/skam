.class final Lcom/google/android/exoplayer/extractor/ts/Id3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Id3Reader.java"


# instance fields
.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 38
    const-string v0, "application/id3"

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 39
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 2

    .prologue
    .line 48
    if-eqz p4, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    .line 50
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_1

    .line 54
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 57
    :cond_1
    return-void
.end method

.method public packetFinished()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 62
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    .line 63
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->writingSample:Z

    .line 44
    return-void
.end method
