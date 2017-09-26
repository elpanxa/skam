.class public final Lcom/google/android/exoplayer/FrameworkSampleSource;
.super Ljava/lang/Object;
.source "FrameworkSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;
.implements Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_MASK:I = 0x3

.field private static final TRACK_STATE_DISABLED:I = 0x0

.field private static final TRACK_STATE_ENABLED:I = 0x1

.field private static final TRACK_STATE_FORMAT_SENT:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private extractor:Landroid/media/MediaExtractor;

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final fileDescriptorLength:J

.field private final fileDescriptorOffset:J

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingDiscontinuities:[Z

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private remainingReleaseCount:I

.field private seekPositionUs:J

.field private trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

.field private trackStates:[I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    .line 91
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 94
    iput-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    .line 95
    iput-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    .line 96
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 109
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 110
    iput-wide p2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    .line 111
    iput-wide p4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    .line 112
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    .line 113
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    .line 114
    iput-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    .line 115
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmInitDataV18()Lcom/google/android/exoplayer/drm/DrmInitData;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 278
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    const-string v0, "video/mp4"

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 280
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v1

    .line 281
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;[B)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 283
    goto :goto_0
.end method

.method private seekToUsInternal(JZ)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p3, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekPositionUs:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 290
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekPositionUs:J

    .line 291
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1, p2, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    return-void
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public disable(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v1, v0, p1

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    .line 235
    return-void

    :cond_0
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 171
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 175
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0

    :cond_1
    move v1, v2

    .line 175
    goto :goto_1
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 252
    iget-boolean v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 253
    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getCachedDuration()J

    move-result-wide v2

    .line 254
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 258
    :goto_0
    return-wide v0

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 258
    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x3

    goto :goto_0

    :cond_1
    add-long v0, v4, v2

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    return v0
.end method

.method public getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    aget-object v0, v0, p1

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
    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    throw v0

    .line 242
    :cond_0
    return-void
.end method

.method public prepare(J)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    if-nez v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return v6

    .line 130
    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    move v0, v6

    .line 145
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 147
    const-string v2, "durationUs"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "durationUs"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 149
    :goto_3
    const-string v4, "mime"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v5, Lcom/google/android/exoplayer/TrackInfo;

    invoke-direct {v5, v1, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v5, v4, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    goto :goto_0

    .line 147
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_3

    .line 152
    :cond_3
    iput-boolean v7, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    :cond_4
    move v6, v7

    .line 154
    goto :goto_0
.end method

.method public readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v1, v0, p1

    .line 194
    const/4 v2, -0x5

    .line 224
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0

    .line 196
    :cond_2
    if-nez p6, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eq v0, v3, :cond_4

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->createFromFrameworkMediaFormatV16(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 202
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer/FrameworkSampleSource;->getDrmInitDataV18()Lcom/google/android/exoplayer/drm/DrmInitData;

    move-result-object v0

    :goto_2
    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Lcom/google/android/exoplayer/drm/DrmInitData;

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v3, v0, p1

    .line 204
    const/4 v2, -0x4

    goto :goto_1

    .line 202
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 207
    if-ne v0, p1, :cond_7

    .line 208
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 211
    iget-object v1, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v2, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    iput v0, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 217
    invoke-virtual {p5}, Lcom/google/android/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/CryptoInfo;->setFromExtractorV16(Landroid/media/MediaExtractor;)V

    .line 220
    :cond_5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekPositionUs:J

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 222
    const/4 v2, -0x3

    goto :goto_1

    .line 213
    :cond_6
    iput v1, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    goto :goto_3

    .line 224
    :cond_7
    if-gez v0, :cond_8

    const/4 v0, -0x1

    :goto_4
    move v2, v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    .line 120
    return-object p0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 265
    iget v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    .line 269
    :cond_0
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    .line 248
    return-void
.end method
