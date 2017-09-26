.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$NoAdaptationSetException;,
        Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    }
.end annotation


# static fields
.field public static final USE_ALL_TRACKS:I = -0x1


# instance fields
.field private final adaptationSetIndex:I

.field private currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final elapsedRealtimeOffsetUs:J

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

.field private fatalError:Ljava/io/IOException;

.field private finishedCurrentManifest:Z

.field private firstAvailableSegmentNum:I

.field private final formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private final formats:[Lcom/google/android/exoplayer/chunk/Format;

.field private final headerBuilder:Ljava/lang/StringBuilder;

.field private lastAvailableSegmentNum:I

.field private lastChunkWasInitialization:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHeight:I

.field private final maxWidth:I

.field private final representationHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final representationIndices:[I

.field private seekRange:Lcom/google/android/exoplayer/TimeRange;

.field private seekRangeValues:[J

.field private startAtLiveEdge:Z

.field private final systemClock:Lcom/google/android/exoplayer/util/Clock;

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 15

    .prologue
    .line 170
    const/4 v1, 0x0

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 155
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 6

    .prologue
    .line 142
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p6, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p8, v0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lcom/google/android/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lcom/google/android/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p6, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V

    .line 241
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Lcom/google/android/exoplayer/util/Clock;JJZLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Lcom/google/android/exoplayer/util/Clock;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 249
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 250
    iput p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    .line 251
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    .line 252
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 253
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 254
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    .line 255
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    .line 256
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    .line 257
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 258
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    .line 259
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    .line 260
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    .line 262
    const/4 v2, 0x2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-static {v2, p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getDrmInitData(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 265
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-object/from16 v0, p4

    invoke-static {v2, p3, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v6

    .line 267
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 269
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer/TrackInfo;

    const/4 v5, 0x0

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 271
    array-length v2, v6

    new-array v2, v2, [Lcom/google/android/exoplayer/chunk/Format;

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    .line 273
    const/4 v4, 0x0

    .line 274
    const/4 v3, 0x0

    .line 275
    const/4 v2, 0x0

    :goto_1
    array-length v5, v6

    if-ge v2, v5, :cond_2

    .line 276
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v7, v5, v2

    .line 277
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    .line 281
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    new-instance v9, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    aget-object v10, v6, v2

    new-instance v11, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-direct {v11, v5}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    invoke-direct {v9, v10, v11}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;-><init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    .line 279
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_2

    .line 284
    :cond_2
    iput v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    .line 285
    iput v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    .line 286
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    new-instance v3, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v3}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/dash/DashChunkSource;)Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    return-object v0
.end method

.method private static buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 714
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 715
    new-instance v8, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v8, v2, v3, v0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;)V

    .line 716
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v3, 0x0

    iget-wide v4, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    iget-wide v6, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    .line 718
    iget-wide v4, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    iget-wide v6, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    sub-long v6, v4, v6

    .line 719
    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method private static getDrmInitData(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 695
    iget-object v1, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video/webm"

    .line 697
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    :cond_0
    return-object v2

    .line 695
    :cond_1
    const-string v1, "video/mp4"

    goto :goto_0

    .line 701
    :cond_2
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .line 702
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    if-eqz v4, :cond_3

    .line 703
    if-nez v2, :cond_4

    .line 704
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 706
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    invoke-virtual {v2, v4, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;[B)V

    goto :goto_1
.end method

.method private static getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 678
    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    .line 679
    if-nez p2, :cond_0

    .line 680
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 681
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 688
    :goto_0
    return-object v0

    .line 684
    :cond_0
    array-length v0, p2

    new-array v2, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 685
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 686
    aget v0, p2, v1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    aput-object v0, v2, v1

    .line 685
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 688
    goto :goto_0
.end method

.method private getNowUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 668
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->systemClock:Lcom/google/android/exoplayer/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    add-long/2addr v0, v2

    .line 671
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 607
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 7

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p2

    .line 618
    if-nez p2, :cond_1

    .line 624
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 626
    new-instance v1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    iget-object v5, p3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v2, p5

    move-object v3, v0

    move v4, p6

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;)V

    return-object v1

    :cond_0
    move-object p1, p2

    .line 622
    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_0
.end method

.method private newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 22

    .prologue
    .line 631
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 632
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 634
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v20

    .line 635
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v4

    add-long v10, v20, v4

    .line 637
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int v12, p3, v3

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    const/4 v13, 0x1

    .line 641
    :goto_0
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    .line 642
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v6, v6, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {v9}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 645
    iget-wide v4, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-wide v6, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    sub-long v14, v4, v6

    .line 647
    iget-object v3, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    const-string v4, "text/vtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 648
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    cmp-long v3, v4, v14

    if-eqz v3, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const-string v4, "EXO-HEADER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OFFSET:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    .line 655
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    .line 657
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    const/4 v6, 0x1

    iget-object v7, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-string v4, "text/vtt"

    invoke-static {v4}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    move-object/from16 v16, v0

    move-object/from16 v4, p2

    move-object v5, v2

    move-wide/from16 v8, v20

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;[B)V

    .line 661
    :goto_1
    return-object v3

    .line 638
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 661
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    iget-object v7, v9, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v4, p2

    move-object v5, v2

    move/from16 v6, p4

    move-wide/from16 v8, v20

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;Z)V

    goto :goto_1
.end method

.method private notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventListener:Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/dash/DashChunkSource$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/dash/DashChunkSource$1;-><init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    :cond_0
    return-void
.end method

.method private updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x3e8

    .line 554
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    .line 555
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v1

    .line 556
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 559
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v2, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v2, v8

    sub-long v2, p2, v2

    .line 560
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    mul-long/2addr v4, v8

    .line 562
    sub-long v4, v2, v4

    invoke-interface {p1, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 567
    :cond_0
    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 569
    :goto_0
    iput v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    .line 570
    iput v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    .line 571
    return-void

    :cond_1
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0
.end method

.method private updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 574
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v2

    .line 575
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    iget v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1

    .line 579
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v0, v6

    sub-long v0, p2, v0

    .line 595
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 598
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/TimeRange;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/TimeRange;-><init>(IJJ)V

    .line 600
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/TimeRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 601
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    .line 604
    :cond_3
    return-void

    .line 582
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 584
    invoke-interface {p1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v4, v6

    sub-long v4, p2, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 13

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v1, v0, :cond_5

    if-eqz v0, :cond_5

    .line 342
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v4

    .line 344
    array-length v5, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v4, v3

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 347
    iget-object v6, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 348
    invoke-interface {v6}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v7

    .line 349
    invoke-interface {v6, v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v8

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 351
    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v7

    .line 352
    invoke-interface {v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v2

    .line 353
    invoke-interface {v7, v2}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    .line 354
    cmp-long v12, v8, v10

    if-gez v12, :cond_2

    .line 357
    new-instance v0, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .line 361
    :cond_2
    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 363
    invoke-interface {v6}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sub-int v2, v6, v2

    .line 368
    :goto_2
    iget v6, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    .line 369
    iput-object v7, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 344
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 366
    :cond_3
    invoke-interface {v6, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v6

    sub-int v2, v6, v2

    goto :goto_2

    .line 371
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 374
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v0

    .line 375
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 376
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 384
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 385
    const-wide/16 v0, 0x1388

    .line 388
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto/16 :goto_0
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
    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 332
    return-void
.end method

.method public enable()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    .line 315
    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/google/android/exoplayer/TimeRange;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/TimeRange;-><init>(IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->notifySeekRangeChanged(Lcom/google/android/exoplayer/TimeRange;)V

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v2

    .line 320
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 321
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    goto :goto_0
.end method

.method public final getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 12
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
    .line 397
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 403
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v2, :cond_3

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object v3, p1

    move-wide/from16 v4, p4

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 406
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 407
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 409
    if-nez v2, :cond_4

    .line 410
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 412
    :cond_4
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v3, :cond_5

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iput-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 422
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 423
    iget-object v5, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 424
    iget-object v7, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 425
    iget-object v6, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    .line 427
    const/4 v3, 0x0

    .line 428
    const/4 v4, 0x0

    .line 430
    iget-object v8, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v8, :cond_6

    .line 431
    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 433
    :cond_6
    if-nez v7, :cond_7

    .line 434
    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v4

    .line 437
    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    .line 439
    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v8, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 441
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 442
    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 447
    :cond_9
    invoke-interface {v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    move v4, v3

    .line 448
    :goto_1
    if-eqz v4, :cond_b

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getNowUs()J

    move-result-wide v8

    .line 453
    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    .line 454
    iget v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    .line 455
    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateAvailableSegmentBounds(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 456
    iget v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    if-ne v3, v6, :cond_a

    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    if-eq v5, v3, :cond_b

    .line 458
    :cond_a
    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;->updateSeekRange(Lcom/google/android/exoplayer/dash/DashSegmentIndex;J)V

    .line 461
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 462
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v3, :cond_c

    .line 463
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer/TimeRange;->getCurrentBoundsUs([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    .line 464
    iget-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v3, :cond_f

    .line 467
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    .line 468
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v5, 0x1

    aget-wide p2, v3, v5

    .line 474
    :cond_c
    :goto_2
    invoke-interface {v7, p2, p3}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v3

    .line 478
    if-eqz v4, :cond_d

    .line 479
    iget v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 487
    :cond_d
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v5, v5, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v5, :cond_15

    .line 488
    iget v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->firstAvailableSegmentNum:I

    if-ge v3, v5, :cond_12

    .line 490
    new-instance v2, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 447
    :cond_e
    const/4 v3, 0x0

    move v4, v3

    goto :goto_1

    .line 470
    :cond_f
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v5, 0x0

    aget-wide v8, v3, v5

    invoke-static {p2, p3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 471
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRangeValues:[J

    const/4 v5, 0x1

    aget-wide v10, v3, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_2

    .line 482
    :cond_10
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 483
    iget-boolean v5, v3, Lcom/google/android/exoplayer/chunk/MediaChunk;->isLastChunk:Z

    if-eqz v5, :cond_11

    const/4 v3, -0x1

    goto :goto_3

    :cond_11
    iget v3, v3, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v5, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int/2addr v3, v5

    goto :goto_3

    .line 492
    :cond_12
    iget v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    if-le v3, v5, :cond_14

    .line 496
    if-nez v4, :cond_13

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_4

    .line 498
    :cond_14
    if-nez v4, :cond_15

    iget v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastAvailableSegmentNum:I

    if-ne v3, v4, :cond_15

    .line 501
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 505
    :cond_15
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 510
    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v5, v5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 512
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 513
    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public final getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    .line 294
    :cond_0
    return-void
.end method

.method getSeekRange()Lcom/google/android/exoplayer/TimeRange;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->seekRange:Lcom/google/android/exoplayer/TimeRange;

    return-object v0
.end method

.method public final getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 523
    :cond_1
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 8

    .prologue
    .line 527
    instance-of v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    if-eqz v0, :cond_2

    .line 528
    check-cast p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;

    .line 529
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 531
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 534
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasSeekMap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    new-instance v2, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    iget-object v3, p1, Lcom/google/android/exoplayer/chunk/InitializationChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    iget-wide v4, v4, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/extractor/ChunkIndex;Ljava/lang/String;J)V

    iput-object v2, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->hasDrmInitData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/InitializationChunk;->getDrmInitData()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 546
    :cond_2
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 551
    return-void
.end method
