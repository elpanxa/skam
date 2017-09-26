.class final Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>([JJJJJ)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 87
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 88
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    .line 89
    iput-wide p6, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    .line 90
    iput-wide p8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    .line 91
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
    .locals 10

    .prologue
    .line 43
    iget v2, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    .line 44
    iget v4, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    .line 45
    iget v0, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v0, v0

    add-long v8, p2, v0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 49
    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    int-to-long v0, v0

    int-to-long v2, v2

    const-wide/32 v6, 0xf4240

    mul-long/2addr v2, v6

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 62
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    int-to-long v4, v0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    const/16 v0, 0x63

    new-array v1, v0, [J

    .line 67
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x63

    if-ge v0, v2, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-wide v2, v8

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>([JJJJJ)V

    goto :goto_0
.end method

.method private getTimeUsForTocIndex(I)J
    .locals 4

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 7

    .prologue
    const/high16 v0, 0x43800000    # 256.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 100
    long-to-float v2, p1

    mul-float/2addr v2, v6

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 102
    cmpg-float v3, v2, v1

    if-gtz v3, :cond_2

    move v0, v1

    .line 122
    :cond_0
    :goto_0
    const/high16 v1, 0x3b800000    # 0.00390625f

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long/2addr v0, v2

    .line 123
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0

    .line 104
    :cond_2
    cmpl-float v3, v2, v6

    if-gez v3, :cond_0

    .line 107
    float-to-int v3, v2

    .line 109
    if-nez v3, :cond_4

    .line 114
    :goto_1
    const/16 v4, 0x63

    if-ge v3, v4, :cond_3

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v4, v0, v3

    long-to-float v0, v4

    .line 119
    :cond_3
    sub-float/2addr v0, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v1, v4

    long-to-float v1, v4

    goto :goto_1
.end method

.method public getTimeUs(J)J
    .locals 11

    .prologue
    .line 128
    const-wide/16 v0, 0x100

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    sub-long v2, p1, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    div-long v4, v0, v2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v4, v5, v1, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v6

    .line 130
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v2

    .line 131
    const/16 v0, 0x62

    if-ne v6, v0, :cond_0

    move-wide v0, v2

    .line 141
    :goto_0
    return-wide v0

    .line 136
    :cond_0
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 137
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    .line 138
    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v6

    .line 139
    sub-long/2addr v6, v2

    sub-long/2addr v4, v0

    mul-long/2addr v4, v6

    sub-long v0, v8, v0

    div-long v0, v4, v0

    .line 141
    add-long/2addr v0, v2

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v0, v0, v6

    goto :goto_1
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
