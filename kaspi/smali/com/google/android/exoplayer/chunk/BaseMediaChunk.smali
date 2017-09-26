.class public abstract Lcom/google/android/exoplayer/chunk/BaseMediaChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndex:I

.field public final isMediaFormatFinal:Z

.field private output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZZ)V
    .locals 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZ)V

    .line 59
    iput-boolean p11, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->isMediaFormatFinal:Z

    .line 60
    return-void
.end method


# virtual methods
.method public abstract getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;
.end method

.method public final getFirstSampleIndex()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    return v0
.end method

.method public abstract getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
.end method

.method protected final getOutput()Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->output:Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/BaseMediaChunk;->firstSampleIndex:I

    .line 71
    return-void
.end method
