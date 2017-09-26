.class public final Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;
.super Ljava/lang/Object;
.source "SingleSampleChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplayer/chunk/Format;

.field private final mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 54
    iput-object p3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 55
    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->durationUs:J

    .line 56
    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 57
    new-instance v0, Lcom/google/android/exoplayer/TrackInfo;

    iget-object v1, p3, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1, p4, p5}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 58
    return-void
.end method

.method private initChunk()Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 111
    new-instance v1, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->durationUs:J

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move v10, v4

    move-object v14, v13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;[B)V

    return-object v1
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public disable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;JJ",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->initChunk()Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    move-result-object v0

    iput-object v0, p6, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0
.end method

.method public getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
