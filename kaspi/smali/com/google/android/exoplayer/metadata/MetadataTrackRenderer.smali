.class public final Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "MetadataTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer/TrackRenderer;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private final metadataHandler:Landroid/os/Handler;

.field private final metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/metadata/MetadataParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pendingMetadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pendingMetadataTimestamp:J

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private final source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private trackIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/metadata/MetadataParser;Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/SampleSource;",
            "Lcom/google/android/exoplayer/metadata/MetadataParser",
            "<TT;>;",
            "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer",
            "<TT;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 83
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 84
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/metadata/MetadataParser;

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    .line 85
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    .line 86
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 90
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private invokeRenderer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataRenderer:Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;->onMetadata(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method private seekToInternal()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    .line 123
    return-void
.end method


# virtual methods
.method protected doPrepare(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v1

    .line 99
    :goto_1
    if-ge v0, v1, :cond_2

    .line 100
    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    iget-object v3, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/metadata/MetadataParser;->canParse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    .line 130
    iget-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 132
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->metadataParser:Lcom/google/android/exoplayer/metadata/MetadataParser;

    iget-object v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v2, v2, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/metadata/MetadataParser;->parse([BI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadataTimestamp:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRenderer(Ljava/lang/Object;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 149
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    goto :goto_0
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 173
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->invokeRendererInternal(Ljava/lang/Object;)V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onDisabled()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->pendingMetadata:Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    .line 164
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->seekToInternal()V

    .line 112
    return-void
.end method

.method protected seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;->seekToInternal()V

    .line 118
    return-void
.end method
