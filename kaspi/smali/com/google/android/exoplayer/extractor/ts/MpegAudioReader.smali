.class final Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "MpegAudioReader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private final headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private lastByteWasFF:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 54
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 56
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 58
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 59
    return-void
.end method

.method private findHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    iget-object v5, p1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    move v4, v0

    .line 109
    :goto_0
    if-ge v4, v6, :cond_3

    .line 110
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 111
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_1

    aget-byte v3, v5, v4

    and-int/lit16 v3, v3, 0xe0

    const/16 v7, 0xe0

    if-ne v3, v7, :cond_1

    move v3, v1

    .line 112
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 113
    if-eqz v3, :cond_2

    .line 114
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 116
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v2, v5, v4

    aput-byte v2, v0, v1

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 119
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 124
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_1

    :cond_1
    move v3, v2

    .line 111
    goto :goto_2

    .line 109
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3
.end method

.method private readFrameRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 190
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 191
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v0, v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 197
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 198
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 199
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method

.method private readHeaderRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 145
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 146
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v0, v9, :cond_0

    .line 173
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    move-result v0

    .line 153
    if-nez v0, :cond_1

    .line 155
    iput v7, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 156
    iput v8, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_2

    .line 162
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/16 v1, 0x1000

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v4, v4, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 167
    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v0, v1, v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 2

    .prologue
    .line 70
    if-eqz p4, :cond_0

    .line 71
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->findHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->readFrameRemainder(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    .line 86
    :cond_1
    return-void

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->state:I

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 66
    return-void
.end method
