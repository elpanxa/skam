.class Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

.field public format:Lcom/google/android/exoplayer/MediaFormat;

.field public final representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

.field public segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

.field public segmentNumShift:I

.field public vttHeader:[B

.field public vttHeaderOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 749
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 750
    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 751
    return-void
.end method
