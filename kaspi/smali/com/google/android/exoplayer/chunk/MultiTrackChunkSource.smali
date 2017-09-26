.class public final Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;
.super Ljava/lang/Object;
.source "MultiTrackChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# static fields
.field public static final MSG_SELECT_TRACK:I = 0x1


# instance fields
.field private final allSources:[Lcom/google/android/exoplayer/chunk/ChunkSource;

.field private enabled:Z

.field private selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/ChunkSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->toChunkSourceArray(Ljava/util/List;)[Lcom/google/android/exoplayer/chunk/ChunkSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;-><init>([Lcom/google/android/exoplayer/chunk/ChunkSource;)V

    .line 51
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer/chunk/ChunkSource;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->allSources:[Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 46
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 47
    return-void
.end method

.method private static toChunkSourceArray(Ljava/util/List;)[Lcom/google/android/exoplayer/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/chunk/ChunkSource;",
            ">;)[",
            "Lcom/google/android/exoplayer/chunk/ChunkSource;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 121
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    return-object v0
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSource;->continueBuffering(J)V

    .line 83
    return-void
.end method

.method public disable(Ljava/util/List;)V
    .locals 1
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
    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->disable(Ljava/util/List;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->enabled:Z

    .line 78
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->enable()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->enabled:Z

    .line 72
    return-void
.end method

.method public getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 8
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
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V

    .line 89
    return-void
.end method

.method public getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 99
    return-void
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->allSources:[Lcom/google/android/exoplayer/chunk/ChunkSource;

    array-length v0, v0

    return v0
.end method

.method public getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->enabled:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 104
    if-ne p1, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->allSources:[Lcom/google/android/exoplayer/chunk/ChunkSource;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    .line 107
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/ChunkSource;->maybeThrowError()V

    .line 94
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V

    .line 112
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/MultiTrackChunkSource;->selectedSource:Lcom/google/android/exoplayer/chunk/ChunkSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V

    .line 117
    return-void
.end method
