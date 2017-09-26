.class public final Lcom/google/android/exoplayer/SingleSampleSource;
.super Ljava/lang/Object;
.source "SingleSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final INITIAL_SAMPLE_SIZE:I = 0x1


# instance fields
.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final format:Lcom/google/android/exoplayer/MediaFormat;

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private final minLoadableRetryCount:I

.field private pendingSample:Z

.field private sampleData:[B

.field private sampleSize:I

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/SingleSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/MediaFormat;I)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 71
    iput p4, p0, Lcom/google/android/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/TrackInfo;

    iget-object v1, p3, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-wide v2, p3, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    .line 74
    return-void
.end method

.method private clearCurrentLoadableException()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 182
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    .prologue
    .line 185
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeStartLoading()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingSample:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long/2addr v0, v2

    .line 171
    iget v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/SingleSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public continueBuffering(IJ)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    return v0
.end method

.method public disable(I)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingSample:Z

    .line 153
    return-void
.end method

.method public enable(IJ)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingSample:Z

    .line 102
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 104
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 230
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 231
    iget v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    .line 232
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    iget v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iget-object v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    iget v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->minLoadableRetryCount:I

    if-le v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    .line 193
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->clearCurrentLoadableException()V

    .line 194
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 203
    iput-object p2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableException:Ljava/io/IOException;

    .line 204
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionCount:I

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->currentLoadableExceptionTimestamp:J

    .line 206
    invoke-direct {p0}, Lcom/google/android/exoplayer/SingleSampleSource;->maybeStartLoading()V

    .line 207
    return-void
.end method

.method public prepare(J)Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/SingleSampleSource;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 122
    if-eqz p6, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingSample:Z

    if-nez v1, :cond_2

    .line 125
    const/4 v0, -0x1

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loadingFinished:Z

    if-eqz v1, :cond_0

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 131
    const/4 v0, 0x1

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 132
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    if-ge v0, v1, :cond_4

    .line 133
    :cond_3
    iget v0, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-virtual {p5, v0}, Lcom/google/android/exoplayer/SampleHolder;->replaceBuffer(I)Z

    .line 135
    :cond_4
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleData:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer/SingleSampleSource;->sampleSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 136
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 0

    .prologue
    .line 78
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 161
    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/SingleSampleSource;->pendingSample:Z

    .line 143
    return-void
.end method
