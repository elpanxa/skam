.class public abstract Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;,
        Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field protected static final SOURCE_STATE_NOT_READY:I = 0x0

.field protected static final SOURCE_STATE_READY:I = 0x1

.field protected static final SOURCE_STATE_READY_READ_MAY_FAIL:I = 0x2


# instance fields
.field private codec:Landroid/media/MediaCodec;

.field public final codecCounters:Lcom/google/android/exoplayer/CodecCounters;

.field private codecHasQueuedBuffers:Z

.field private codecHotswapTimeMs:J

.field private codecIsAdaptive:Z

.field private codecNeedsEndOfStreamWorkaround:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

.field private final drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

.field protected final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private format:Lcom/google/android/exoplayer/MediaFormat;

.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private openedDrmSession:Z

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private final source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private sourceState:I

.field private trackIndex:I

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 232
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 233
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 234
    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 235
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    .line 236
    iput-object p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    .line 237
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    .line 238
    new-instance v0, Lcom/google/android/exoplayer/CodecCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    .line 239
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 240
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 242
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 243
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 244
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 245
    return-void

    :cond_0
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    return-object v0
.end method

.method private checkForDiscontinuity(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x1

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 520
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    goto :goto_0
.end method

.method private static codecNeedsEndOfStreamWorkaround(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 953
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const-string v0, "ht7s3"

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    .line 831
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 835
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    .line 838
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    .line 842
    const/4 v0, 0x1

    goto :goto_0

    .line 843
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_6

    .line 844
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 846
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    .line 847
    const/4 v0, 0x1

    goto :goto_0

    .line 849
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 852
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 853
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processEndOfStream()V

    .line 854
    const/4 v0, 0x0

    goto :goto_0

    .line 857
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecodeOnlyIndex(J)I

    move-result v0

    .line 858
    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 860
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 861
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 863
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 864
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 858
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 867
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private feedInputBuffer(JZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    .line 564
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 566
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v0, :cond_2

    .line 567
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 573
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 576
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround:Z

    if-eqz v0, :cond_4

    .line 582
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 583
    const/4 v0, 0x0

    goto :goto_0

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    goto :goto_1

    .line 587
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    .line 589
    const/4 v0, -0x3

    .line 606
    :cond_6
    :goto_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 607
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 594
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 598
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 600
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 601
    if-eqz p3, :cond_6

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 602
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_2

    .line 609
    :cond_a
    const/4 v1, -0x5

    if-ne v0, v1, :cond_b

    .line 610
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    .line 611
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 613
    :cond_b
    const/4 v1, -0x4

    if-ne v0, v1, :cond_d

    .line 614
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 618
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 620
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 621
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 623
    :cond_d
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 624
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 631
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 633
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround:Z

    if-eqz v0, :cond_f

    .line 643
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 636
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 639
    :catch_0
    move-exception v0

    .line 640
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 641
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 645
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_13

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->isSyncFrame()Z

    move-result v0

    if-nez v0, :cond_12

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 650
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 653
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 655
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 657
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 659
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v0

    .line 660
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldWaitForKeys(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 661
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v1, :cond_14

    .line 662
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 665
    :cond_14
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 666
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    sub-int v1, v3, v1

    .line 667
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 668
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/SampleHolder;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 669
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_15
    if-eqz v0, :cond_16

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 678
    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHasQueuedBuffers:Z

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 685
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 676
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 681
    :catch_1
    move-exception v0

    .line 682
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 683
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private flushCodec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 526
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 527
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 528
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 529
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 530
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 536
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHasQueuedBuffers:Z

    .line 541
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 544
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 546
    :cond_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method private getDecodeOnlyIndex(J)I
    .locals 7

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 933
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 938
    :goto_1
    return v0

    .line 933
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 691
    if-nez p1, :cond_0

    .line 701
    :goto_0
    return-object v0

    .line 697
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 698
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 700
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private isWithinHotswapPeriod()Z
    .locals 6

    .prologue
    .line 808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 387
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_0
    return-void
.end method

.method private notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    :cond_0
    return-void
.end method

.method private notifyDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 929
    :cond_0
    return-void
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 887
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 890
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    goto :goto_0
.end method

.method private readFormat(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 510
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 513
    :cond_0
    return-void
.end method

.method private seekToInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 471
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 472
    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 473
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 705
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v1

    .line 709
    if-nez v1, :cond_2

    .line 710
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 712
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v1, :cond_0

    .line 714
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method protected final codecInitialized()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 309
    return-void
.end method

.method protected doPrepare(J)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v1

    .line 250
    if-nez v1, :cond_0

    .line 263
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v1

    .line 254
    :goto_1
    if-ge v0, v1, :cond_2

    .line 258
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handlesMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v3, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->checkForDiscontinuity(J)V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->readFormat(J)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 498
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 499
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(JZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    :cond_4
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 505
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->ensureUpdated()V

    .line 506
    return-void

    .line 487
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    .prologue
    .line 817
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    return-wide v0
.end method

.method protected final getSourceState()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    return v0
.end method

.method protected handlesMimeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected final haveFormat()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isWithinHotswapPeriod()Z

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

.method protected final maybeInitCodec()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v4, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    if-eqz v1, :cond_8

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_2

    .line 322
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->open(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 326
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v0

    .line 329
    if-nez v0, :cond_4

    .line 330
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 331
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    move-object v2, v1

    .line 343
    :goto_1
    :try_start_0
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_2
    if-nez v0, :cond_6

    .line 350
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34f

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 354
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    .line 355
    iget-boolean v0, v0, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 356
    invoke-static {v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround:Z

    .line 358
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createByCodecName("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 360
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 361
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 362
    const-string v0, "configureCodec"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->configureCodec(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 364
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 365
    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 367
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 369
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitialized(Ljava/lang/String;JJ)V

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getState()I

    move-result v0

    if-ne v0, v8, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 378
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 379
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 380
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    move-object v0, v3

    goto/16 :goto_2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_3

    .line 376
    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 405
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    throw v0

    .line 409
    :catchall_1
    move-exception v0

    .line 410
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    throw v0
.end method

.method protected onEnabled(JZ)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    .line 281
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->seekToInternal()V

    .line 282
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 727
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 728
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 729
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 731
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 742
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHasQueuedBuffers:Z

    if-eqz v0, :cond_1

    .line 735
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method protected onReleased()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->release()V

    .line 451
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 422
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 423
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 424
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 425
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 428
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 429
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHasQueuedBuffers:Z

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecNeedsEndOfStreamWorkaround:Z

    .line 433
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 434
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReinitializationState:I

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 446
    :cond_0
    return-void

    .line 442
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 442
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->seekToInternal()V

    .line 467
    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
