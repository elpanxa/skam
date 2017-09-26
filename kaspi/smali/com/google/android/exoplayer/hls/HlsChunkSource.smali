.class public Lcom/google/android/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final ADAPTIVE_MODE_ABRUPT:I = 0x3

.field public static final ADAPTIVE_MODE_NONE:I = 0x0

.field public static final ADAPTIVE_MODE_SPLICE:I = 0x1

.field private static final BANDWIDTH_FRACTION:F = 0.8f

.field public static final DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS:J = 0x4e20L

.field public static final DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS:J = 0x1388L

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "HlsChunkSource"


# instance fields
.field private final adaptiveMode:I

.field private final audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private final bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private live:Z

.field private final maxBufferDurationToSwitchDownUs:J

.field private final maxHeight:I

.field private final maxWidth:I

.field private final minBufferDurationToSwitchUpUs:J

.field private final playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private scratchSpace:[B

.field private selectedVariantIndex:I

.field private final variantBlacklistTimes:[J

.field private final variantLastPlaylistLoadTimesMs:[J

.field private final variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

.field private final variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IIJJLcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 11

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 180
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 181
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    .line 182
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 183
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p7

    iput-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    .line 184
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p9

    iput-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    .line 185
    iget-object v2, p3, Lcom/google/android/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 186
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v2}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 188
    iget v2, p3, Lcom/google/android/exoplayer/hls/HlsPlaylist;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 189
    const/4 v2, 0x1

    new-array v9, v2, [Lcom/google/android/exoplayer/hls/Variant;

    const/4 v10, 0x0

    new-instance v2, Lcom/google/android/exoplayer/hls/Variant;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/Variant;-><init>(ILjava/lang/String;ILjava/lang/String;II)V

    aput-object v2, v9, v10

    iput-object v9, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 190
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 192
    const/4 v2, 0x1

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 193
    const/4 v2, 0x0

    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 195
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 196
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    check-cast p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    iget-object v7, p3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 199
    move-object/from16 v0, p5

    invoke-static {v7, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->buildOrderedVariants(Ljava/util/List;[I)[Lcom/google/android/exoplayer/hls/Variant;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 201
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 202
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    .line 203
    const/4 v5, -0x1

    .line 204
    const/4 v4, -0x1

    .line 206
    const v3, 0x7fffffff

    .line 207
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 208
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v6, v6, v2

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 209
    if-ge v6, v3, :cond_1

    .line 211
    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move v3, v6

    .line 213
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 214
    iget v8, v6, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 215
    iget v6, v6, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    if-nez p6, :cond_4

    .line 219
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 220
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    goto :goto_0

    .line 224
    :cond_4
    if-lez v5, :cond_5

    :goto_2
    iput v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    .line 225
    if-lez v4, :cond_6

    :goto_3
    iput v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    goto :goto_0

    .line 224
    :cond_5
    const/16 v5, 0x780

    goto :goto_2

    .line 225
    :cond_6
    const/16 v4, 0x438

    goto :goto_3
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IILcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 13

    .prologue
    .line 152
    const-wide/16 v8, 0x1388

    const-wide/16 v10, 0x4e20

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[IIJJLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 155
    return-void
.end method

.method private allVariantsBlacklisted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 632
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 637
    :goto_1
    return v1

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static buildOrderedVariants(Ljava/util/List;[I)[Lcom/google/android/exoplayer/hls/Variant;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/hls/Variant;",
            ">;[I)[",
            "Lcom/google/android/exoplayer/hls/Variant;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 569
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 570
    if-eqz p1, :cond_0

    move v0, v1

    .line 571
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 572
    aget v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 579
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 580
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 581
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 582
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/Variant;

    .line 583
    iget-object v5, v0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-gtz v5, :cond_2

    const-string v5, "avc"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 584
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    :cond_4
    const-string v5, "mp4a"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 586
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 590
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    .line 603
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer/hls/Variant;

    .line 604
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 605
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 614
    return-object v1

    .line 595
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 598
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v0, v3

    goto :goto_3
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 547
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 550
    return-void
.end method

.method private clearStaleBlacklistedVariants()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 642
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v1, v0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v4, v1, v0

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v1, v0

    .line 642
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    return-void
.end method

.method private getLiveStartChunkMediaSequence(I)I
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v1, v0, p1

    .line 508
    iget-object v0, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 509
    :goto_0
    iget v1, v1, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v0, v1

    return v0

    .line 508
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearStaleBlacklistedVariants()V

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    .line 445
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v2, v2, v3

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v0

    .line 474
    :goto_0
    return v0

    .line 449
    :cond_0
    if-nez p1, :cond_1

    .line 451
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 453
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 455
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 457
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndexForBandwidth(J)I

    move-result v2

    .line 458
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ne v2, v0, :cond_3

    .line 460
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0

    .line 464
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    .line 466
    :goto_1
    sub-long/2addr v0, p2

    .line 467
    iget-object v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    iget v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-wide v4, v3, v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-le v2, v3, :cond_4

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxBufferDurationToSwitchDownUs:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_5

    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    if-ge v2, v3, :cond_7

    iget-wide v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->minBufferDurationToSwitchUpUs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    :cond_5
    move v0, v2

    .line 471
    goto :goto_0

    .line 464
    :cond_6
    iget-wide v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_1

    .line 474
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    goto :goto_0
.end method

.method private getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 3

    .prologue
    .line 651
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    return v0

    .line 651
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
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

.method private getVariantIndexForBandwidth(J)I
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 478
    const-wide/16 v6, -0x1

    cmp-long v2, p1, v6

    if-nez v2, :cond_0

    move-wide p1, v0

    .line 482
    :cond_0
    long-to-float v2, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v4

    float-to-int v6, v2

    move v2, v3

    move v4, v5

    .line 484
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 485
    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v8, v7, v2

    cmp-long v7, v8, v0

    if-nez v7, :cond_2

    .line 486
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    if-gt v4, v6, :cond_1

    .line 494
    :goto_1
    return v2

    :cond_1
    move v4, v2

    .line 484
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_3
    if-eq v4, v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    move v2, v4

    .line 494
    goto :goto_1
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 8

    .prologue
    .line 521
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 522
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V

    return-object v1
.end method

.method private newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 9

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/google/android/exoplayer/hls/Variant;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 514
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 516
    new-instance v8, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V

    return-object v8
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .prologue
    const/16 v3, 0x10

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 534
    new-array v2, v3, [B

    .line 535
    array-length v0, v1

    if-le v0, v3, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    .line 536
    :goto_1
    array-length v3, v2

    array-length v4, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 540
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    .line 541
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 542
    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    .line 543
    return-void

    :cond_0
    move-object v0, p2

    .line 530
    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 555
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    iget-boolean v1, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    .line 556
    iget-wide v0, p2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    .line 557
    return-void
.end method

.method private shouldRerequestMediaPlaylist(I)Z
    .locals 6

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v0, v0, p1

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v4, v1, p1

    sub-long/2addr v2, v4

    .line 502
    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v1

    .line 622
    :cond_1
    const-string v2, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 623
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 624
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    const/4 v1, 0x1

    goto :goto_0

    .line 623
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getChunkOperation(Lcom/google/android/exoplayer/hls/TsChunk;JJ)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 26

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    if-nez v4, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 265
    const/4 v11, 0x0

    .line 273
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    aget-object v14, v5, v4

    .line 274
    if-nez v14, :cond_2

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v11

    .line 367
    :goto_1
    return-object v11

    .line 267
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getNextVariantIndex(Lcom/google/android/exoplayer/hls/TsChunk;J)I

    move-result v5

    .line 268
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->adaptiveMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    :goto_2
    move v11, v4

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 279
    :cond_2
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    .line 281
    const/4 v6, 0x0

    .line 282
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v5, :cond_5

    .line 283
    if-nez p1, :cond_3

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v5

    move v13, v6

    move/from16 v20, v5

    .line 305
    :goto_3
    iget v5, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    sub-int v15, v20, v5

    .line 306
    iget-object v5, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v15, v5, :cond_9

    .line 307
    iget-boolean v5, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->shouldRerequestMediaPlaylist(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 308
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newMediaPlaylistChunk(I)Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v11

    goto :goto_1

    .line 286
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    .line 288
    :goto_4
    iget v7, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    if-ge v5, v7, :cond_14

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getLiveStartChunkMediaSequence(I)I

    move-result v20

    .line 291
    const/4 v5, 0x1

    move v13, v5

    goto :goto_3

    .line 286
    :cond_4
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 296
    :cond_5
    if-nez p1, :cond_6

    .line 297
    iget-object v5, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v5

    iget v7, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr v5, v7

    move v13, v6

    move/from16 v20, v5

    goto :goto_3

    .line 300
    :cond_6
    if-eqz v11, :cond_7

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    :goto_5
    move v13, v6

    move/from16 v20, v5

    goto :goto_3

    :cond_7
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/hls/TsChunk;->chunkIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 310
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 314
    :cond_9
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    .line 315
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 318
    iget-boolean v4, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v4, :cond_d

    .line 319
    iget-object v4, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 322
    iget-object v5, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;I)Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v11

    goto/16 :goto_1

    .line 325
    :cond_a
    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 326
    iget-object v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 333
    :cond_b
    :goto_6
    new-instance v4, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeOffset:I

    int-to-long v6, v6

    iget v8, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->byterangeLength:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v6, :cond_10

    .line 339
    if-nez p1, :cond_e

    .line 340
    const-wide/16 v8, 0x0

    .line 349
    :goto_7
    iget-wide v6, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v16

    double-to-long v6, v6

    add-long v18, v8, v6

    .line 350
    iget-boolean v6, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->live:Z

    if-nez v6, :cond_11

    iget-object v6, v14, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v15, v6, :cond_11

    const/16 v21, 0x1

    .line 351
    :goto_8
    const/4 v6, 0x0

    .line 352
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->selectedVariantIndex:I

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 356
    if-eqz p1, :cond_c

    iget-boolean v10, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->discontinuity:Z

    if-nez v10, :cond_c

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v13, :cond_13

    .line 358
    :cond_c
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v10, ".aac"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;

    invoke-direct {v10, v8, v9}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 361
    :goto_9
    new-instance v5, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;-><init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;Z)V

    move-object/from16 v22, v5

    .line 367
    :goto_a
    new-instance v11, Lcom/google/android/exoplayer/hls/TsChunk;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v24, v0

    move-object v13, v4

    move v14, v6

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v24}, Lcom/google/android/exoplayer/hls/TsChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJIZLcom/google/android/exoplayer/hls/HlsExtractorWrapper;[B[B)V

    goto/16 :goto_1

    .line 329
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->clearEncryptionData()V

    goto/16 :goto_6

    .line 341
    :cond_e
    if-eqz v11, :cond_f

    .line 342
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->startTimeUs:J

    goto :goto_7

    .line 344
    :cond_f
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/exoplayer/hls/TsChunk;->endTimeUs:J

    goto :goto_7

    .line 347
    :cond_10
    iget-wide v8, v12, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    goto/16 :goto_7

    .line 350
    :cond_11
    const/16 v21, 0x0

    goto :goto_8

    .line 358
    :cond_12
    new-instance v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-direct {v10, v8, v9, v5}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;-><init>(JLcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_9

    .line 364
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->extractorWrapper:Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    move-object/from16 v22, v0

    goto :goto_a

    :cond_14
    move v13, v6

    move/from16 v20, v5

    goto/16 :goto_3
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->live:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->durationUs:J

    goto :goto_0
.end method

.method public getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    goto :goto_0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 3

    .prologue
    .line 379
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_1

    .line 380
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 381
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 382
    iget v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer/hls/HlsMediaPlaylist;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 384
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 385
    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 386
    iget-object v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/io/IOException;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 400
    invoke-virtual {p1}, Lcom/google/android/exoplayer/chunk/Chunk;->bytesLoaded()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_2

    .line 404
    check-cast p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 405
    iget v4, p2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 406
    const/16 v0, 0x194

    if-eq v4, v0, :cond_1

    const/16 v0, 0x19a

    if-ne v4, v0, :cond_2

    .line 408
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/TsChunk;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 409
    check-cast v0, Lcom/google/android/exoplayer/hls/TsChunk;

    .line 410
    iget-object v0, v0, Lcom/google/android/exoplayer/hls/TsChunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->getVariantIndex(Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aget-wide v6, v1, v0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    move v1, v2

    .line 419
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    aput-wide v6, v5, v0

    .line 420
    if-eqz v1, :cond_6

    .line 422
    const-string v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already blacklisted variant ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_2
    :goto_2
    return v3

    .line 411
    :cond_3
    instance-of v0, p1, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 412
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 413
    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 415
    check-cast v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 416
    iget v0, v0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    goto :goto_0

    :cond_5
    move v1, v3

    .line 418
    goto :goto_1

    .line 425
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->allVariantsBlacklisted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 427
    const-string v0, "HlsChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blacklisted variant ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 429
    goto :goto_2

    .line 432
    :cond_7
    const-string v1, "HlsChunkSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final variant not blacklisted ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v4, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource;->variantBlacklistTimes:[J

    aput-wide v8, v1, v0

    goto :goto_2
.end method
