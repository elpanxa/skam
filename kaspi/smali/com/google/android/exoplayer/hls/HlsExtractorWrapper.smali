.class public final Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
.super Ljava/lang/Object;
.source "HlsExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;


# instance fields
.field private allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field public final format:Lcom/google/android/exoplayer/chunk/Format;

.field private prepared:Z

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldSpliceIn:Z

.field private spliceConfigured:Z

.field public final startTimeUs:J

.field private volatile tracksBuilt:Z

.field public final trigger:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;Z)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 60
    iput-wide p3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    .line 61
    iput-object p5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 62
    iput-boolean p6, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public final configureSpliceTo(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v4

    .line 141
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_1
    if-ge v2, v4, :cond_2

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 143
    iget-object v1, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->configureSpliceTo(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)Z

    move-result v0

    and-int v1, v3, v0

    .line 141
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    .line 146
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    goto :goto_0
.end method

.method public discardUntil(IJ)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUntil(J)V

    .line 200
    return-void
.end method

.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    .line 242
    return-void
.end method

.method public getLargestParsedTimestampUs()J
    .locals 6

    .prologue
    .line 108
    const-wide/high16 v2, -0x8000000000000000L

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_0
    return-wide v2
.end method

.method public getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getSample(ILcom/google/android/exoplayer/SampleHolder;)Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public hasSamples(I)Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 74
    return-void
.end method

.method public isPrepared()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->hasFormat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_1
    return v2

    .line 83
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    .line 90
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    goto :goto_1
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v1

    .line 226
    if-eq v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 227
    return v1

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    return-object v0
.end method
