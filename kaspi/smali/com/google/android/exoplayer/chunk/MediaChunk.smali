.class public abstract Lcom/google/android/exoplayer/chunk/MediaChunk;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:I

.field public final endTimeUs:J

.field public final isLastChunk:Z

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZ)V
    .locals 7

    .prologue
    .line 56
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;)V

    .line 57
    invoke-static {p4}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-wide p5, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->startTimeUs:J

    .line 59
    iput-wide p7, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->endTimeUs:J

    .line 60
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    .line 61
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/MediaChunk;->isLastChunk:Z

    .line 62
    return-void
.end method
