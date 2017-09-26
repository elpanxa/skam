.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.super Ljava/lang/Object;
.source "SmoothStreamingChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388


# instance fields
.field private currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final extractorWrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fatalError:Ljava/io/IOException;

.field private finishedCurrentManifest:Z

.field private final formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private final formats:[Lcom/google/android/exoplayer/chunk/Format;

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHeight:I

.field private final maxWidth:I

.field private final mediaFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final streamElementIndex:I

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 10

    .prologue
    .line 124
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 109
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            "I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 131
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->streamElementIndex:I

    .line 132
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 133
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 134
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 135
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p7

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getElement(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-result-object v16

    .line 138
    new-instance v2, Lcom/google/android/exoplayer/TrackInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 139
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 141
    const/4 v11, 0x0

    .line 142
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    .line 143
    if-eqz v2, :cond_0

    .line 144
    iget-object v3, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-static {v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getKeyId([B)[B

    move-result-object v3

    .line 145
    const/4 v4, 0x1

    new-array v11, v4, [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 146
    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7, v3}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    aput-object v5, v11, v4

    .line 147
    new-instance v3, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    const-string v4, "video/mp4"

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v4, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;[B)V

    .line 149
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 154
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    .line 155
    :goto_1
    new-array v3, v2, [Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 156
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    .line 157
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v13, 0x0

    move v5, v4

    :goto_2
    if-ge v13, v2, :cond_5

    .line 161
    if-eqz p4, :cond_2

    aget v4, p4, v13

    .line 162
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v7, v6, v13

    .line 163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 164
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 166
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getMediaFormat(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v10

    .line 167
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_VIDEO:I

    .line 169
    :goto_4
    new-instance v17, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 171
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    sget v12, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_VIDEO:I

    if-ne v5, v12, :cond_4

    const/4 v12, 0x4

    :goto_5
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->setTrack(Lcom/google/android/exoplayer/extractor/mp4/Track;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    new-instance v5, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer/extractor/Extractor;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    add-int/lit8 v13, v13, 0x1

    move v3, v14

    move v5, v15

    goto :goto_2

    .line 151
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    goto/16 :goto_0

    .line 154
    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    array-length v2, v2

    goto/16 :goto_1

    :cond_2
    move v4, v13

    .line 161
    goto :goto_3

    .line 167
    :cond_3
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_AUDIO:I

    goto :goto_4

    .line 171
    :cond_4
    const/4 v12, -0x1

    goto :goto_5

    .line 177
    :cond_5
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->maxWidth:I

    .line 178
    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->maxHeight:I

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    new-instance v3, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v3}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 180
    return-void
.end method

.method private getElement(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getKeyId([B)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 421
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 422
    aget-byte v3, p0, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v2, "<KID>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const-string v3, "</KID>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 428
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 429
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 430
    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 431
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    .line 432
    return-object v0
.end method

.method private getLiveSeekPosition()J
    .locals 8

    .prologue
    .line 352
    const-wide/high16 v2, -0x8000000000000000L

    .line 353
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v1, v1, v0

    .line 355
    iget v4, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lez v4, :cond_0

    .line 356
    iget v4, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    iget v6, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 359
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    sub-long v0, v2, v0

    return-wide v0
.end method

.method private static getMediaFormat(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v0, v0, p1

    .line 382
    iget-object v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 383
    iget-object v2, v1, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 384
    iget v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 385
    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v1, v1, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v5, v3, v1, v0}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 387
    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxWidth:I

    iget v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->maxHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    .line 403
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    if-nez v3, :cond_2

    .line 391
    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    if-eqz v3, :cond_1

    .line 392
    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 397
    :goto_1
    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->numChannels:I

    iget v1, v1, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    invoke-static {v2, v5, v3, v1, v0}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    iget v0, v1, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->numChannels:I

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(II)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 401
    iget-object v0, v1, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTrackIndex(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->streamElementIndex:I

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    .line 371
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 372
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    return v0

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IZJJILcom/google/android/exoplayer/MediaFormat;)Lcom/google/android/exoplayer/chunk/MediaChunk;
    .locals 18

    .prologue
    .line 410
    const-wide/16 v2, 0x0

    .line 411
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 414
    new-instance v1, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    const/16 v17, 0x1

    move-object/from16 v2, p5

    move-object v3, v0

    move/from16 v4, p12

    move-object/from16 v5, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-object/from16 v14, p3

    move-object/from16 v15, p13

    move-object/from16 v16, p4

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZJLcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;Z)V

    return-object v1
.end method

.method private static swap([BII)V
    .locals 2

    .prologue
    .line 436
    aget-byte v0, p0, p1

    .line 437
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 438
    aput-byte v0, p0, p2

    .line 439
    return-void
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 218
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_3

    .line 219
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getElement(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-result-object v1

    .line 220
    iget v2, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    .line 221
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getElement(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-result-object v3

    .line 222
    if-eqz v2, :cond_2

    iget v4, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v4, :cond_4

    .line 224
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    .line 237
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .line 238
    iput-boolean v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->finishedCurrentManifest:Z

    .line 241
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->finishedCurrentManifest:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0

    .line 226
    :cond_4
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 228
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 229
    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    .line 231
    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    .line 234
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1
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
    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 209
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 201
    :cond_0
    return-void
.end method

.method public final getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 18
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
    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formatEvaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 260
    if-nez v2, :cond_2

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 263
    :cond_2
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v3, :cond_3

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iput-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getElement(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-result-object v4

    .line 274
    iget v3, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v3, :cond_4

    .line 276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->finishedCurrentManifest:Z

    goto :goto_0

    .line 281
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v3, :cond_5

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getLiveSeekPosition()J

    move-result-wide p2

    .line 285
    :cond_5
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v3

    .line 291
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v5, :cond_a

    .line 292
    if-gez v3, :cond_8

    .line 294
    new-instance v2, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 287
    :cond_6
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 288
    iget-boolean v5, v3, Lcom/google/android/exoplayer/chunk/MediaChunk;->isLastChunk:Z

    if-eqz v5, :cond_7

    const/4 v3, -0x1

    goto :goto_1

    :cond_7
    iget v3, v3, Lcom/google/android/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    sub-int/2addr v3, v5

    goto :goto_1

    .line 296
    :cond_8
    iget v5, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lt v3, v5, :cond_9

    .line 298
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->finishedCurrentManifest:Z

    goto/16 :goto_0

    .line 300
    :cond_9
    iget v5, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_a

    .line 303
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->finishedCurrentManifest:Z

    .line 307
    :cond_a
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-nez v5, :cond_b

    iget v5, v4, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_b

    const/4 v9, 0x1

    .line 313
    :goto_2
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    .line 314
    if-eqz v9, :cond_c

    const-wide/16 v12, -0x1

    .line 316
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int v8, v3, v5

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getTrackIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v15

    .line 319
    invoke-virtual {v4, v15, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 320
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v14, v14, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer/MediaFormat;

    invoke-static/range {v2 .. v15}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer/drm/DrmInitData;Lcom/google/android/exoplayer/upstream/DataSource;IZJJILcom/google/android/exoplayer/MediaFormat;)Lcom/google/android/exoplayer/chunk/MediaChunk;

    move-result-object v2

    .line 323
    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 312
    :cond_b
    const/4 v9, 0x0

    goto :goto_2

    .line 314
    :cond_c
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long v12, v10, v6

    goto :goto_3
.end method

.method public final getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    .line 187
    :cond_0
    return-void
.end method

.method public final getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

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
    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    .line 333
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method
