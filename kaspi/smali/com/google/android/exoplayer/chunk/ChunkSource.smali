.class public interface abstract Lcom/google/android/exoplayer/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract continueBuffering(J)V
.end method

.method public abstract disable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enable()V
.end method

.method public abstract getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
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
.end method

.method public abstract getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
.end method

.method public abstract getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
.end method
