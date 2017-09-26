.class public final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;,
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;,
        Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final CUES_STATE_BUILDING:I = 0x1

.field private static final CUES_STATE_BUILT:I = 0x2

.field private static final CUES_STATE_NOT_BUILT:I = 0x0

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final MP3_MAX_INPUT_SIZE:I = 0x1000

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final TRACK_TYPE_VIDEO:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000


# instance fields
.field private audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private blockEncryptionKeyId:[B

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

.field private cuesContentPosition:J

.field private cuesState:I

.field private durationTimecode:J

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private final sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentDrmInitData:Z

.field private timecodeScale:J

.field private trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private final varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

.field private videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private final vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const-wide/16 v2, -0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 155
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    .line 156
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 157
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    .line 158
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    .line 172
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    .line 173
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    .line 175
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 207
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V

    .line 209
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    .line 210
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 211
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 212
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 213
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 214
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 215
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 216
    return-void
.end method

.method private buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 902
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 906
    :cond_0
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 907
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 908
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    .line 928
    :goto_0
    return-object v0

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v2

    .line 911
    new-array v3, v2, [I

    .line 912
    new-array v4, v2, [J

    .line 913
    new-array v5, v2, [J

    .line 914
    new-array v6, v2, [J

    move v1, v0

    .line 915
    :goto_1
    if-ge v1, v2, :cond_2

    .line 916
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 917
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 919
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    .line 920
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 921
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v6, v1

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 923
    :cond_3
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v4, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 925
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v6, v1

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 926
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 927
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 928
    new-instance v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_0
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    .prologue
    .line 985
    if-nez p0, :cond_1

    .line 986
    new-array p0, p1, [I

    .line 991
    :cond_0
    :goto_0
    return-object p0

    .line 987
    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 991
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 966
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 941
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    if-eqz v2, :cond_0

    .line 942
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    .line 943
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 944
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    .line 945
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    .line 955
    :goto_0
    return v0

    .line 950
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 951
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 952
    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekPositionAfterBuildingCues:J

    goto :goto_0

    :cond_1
    move v0, v1

    .line 955
    goto :goto_0
.end method

.method private outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V
    .locals 8

    .prologue
    .line 755
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockEncryptionKeyId:[B

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    .line 757
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 758
    return-void
.end method

.method private readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 783
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0
.end method

.method private readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 884
    if-lez v0, :cond_0

    .line 885
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 886
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 890
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 891
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 892
    return v0

    .line 888
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 869
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 870
    if-lez v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 873
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 874
    return-void
.end method

.method private resetSample()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 761
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 762
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 763
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 764
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 766
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 959
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 787
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    if-nez v0, :cond_2

    .line 788
    iget-boolean v0, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v0, :cond_4

    .line 791
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v6, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 793
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    .line 794
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 795
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v1, 0x8

    aput-byte v1, v0, v6

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 800
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v0, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 801
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 802
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 808
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleEncodingHandled:Z

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/2addr v0, p4

    .line 812
    const-string v1, "V_MPEG4/ISO/AVC"

    iget-object v2, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "V_MPEGH/ISO/HEVC"

    iget-object v2, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 818
    aput-byte v6, v1, v6

    .line 819
    aput-byte v6, v1, v3

    .line 820
    const/4 v2, 0x2

    aput-byte v6, v1, v2

    .line 821
    iget v2, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    .line 822
    iget v3, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v3, v3, 0x4

    .line 826
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v4, v0, :cond_7

    .line 827
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_5

    .line 829
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToTarget(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 831
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 832
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    .line 834
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 835
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v4, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 836
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    goto :goto_1

    .line 804
    :cond_4
    iget-object v0, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleStrippedBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    iget-object v2, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 839
    :cond_5
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 844
    :cond_6
    :goto_2
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    if-ge v1, v0, :cond_7

    .line 845
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesRead:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readToOutput(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    goto :goto_2

    .line 849
    :cond_7
    const-string v0, "A_VORBIS"

    iget-object v1, p3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->vorbisNumPageSamples:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {p2, v0, v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 858
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleBytesWritten:I

    .line 860
    :cond_8
    return-void
.end method


# virtual methods
.method binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 587
    sparse-switch p1, :sswitch_data_0

    .line 750
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 590
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v3, p2, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 591
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 592
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryIdBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 748
    :goto_0
    return-void

    .line 595
    :sswitch_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 600
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    .line 601
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 604
    :sswitch_3
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    .line 605
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_0

    .line 614
    :sswitch_4
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    if-nez v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    .line 616
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->getLastLength()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    .line 617
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 618
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    if-eq v2, v3, :cond_4

    .line 629
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    sub-int v2, p2, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 630
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    .line 634
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 637
    :goto_1
    iget-object v11, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 639
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 641
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 642
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x1

    .line 643
    if-nez v3, :cond_7

    .line 644
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 645
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 646
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    sub-int v5, p2, v5

    add-int/lit8 v5, v5, -0x3

    aput v5, v3, v4

    .line 720
    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 721
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    .line 722
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    move v5, v3

    .line 723
    :goto_3
    const/16 v3, 0xa3

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    .line 724
    :goto_4
    if-eqz v3, :cond_18

    const/4 v3, 0x1

    move v4, v3

    :goto_5
    if-eqz v5, :cond_19

    const/high16 v3, 0x8000000

    :goto_6
    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 726
    iget-object v3, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockEncryptionKeyId:[B

    .line 727
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 728
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    .line 731
    :cond_5
    const/16 v3, 0xa3

    move/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 733
    :goto_7
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    if-ge v3, v4, :cond_1a

    .line 734
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v11, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V

    .line 736
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    iget v6, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    mul-int/2addr v3, v6

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 738
    invoke-direct {p0, v11, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V

    .line 739
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleIndex:I

    goto :goto_7

    .line 634
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_1

    .line 648
    :cond_7
    const/16 v4, 0xa3

    move/from16 v0, p1

    if-eq v0, v4, :cond_8

    .line 649
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Lacing only supported in SimpleBlocks."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_8
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 654
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    .line 655
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->ensureArrayCapacity([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    .line 657
    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 658
    iget v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x4

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    div-int/2addr v3, v4

    .line 660
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    invoke-static {v4, v5, v6, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_2

    .line 661
    :cond_9
    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 662
    const/4 v5, 0x0

    .line 663
    const/4 v4, 0x4

    .line 664
    const/4 v3, 0x0

    :goto_8
    iget v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_b

    .line 665
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 668
    :cond_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 669
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 670
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    aget v8, v7, v3

    add-int/2addr v8, v6

    aput v8, v7, v3

    .line 671
    const/16 v7, 0xff

    if-eq v6, v7, :cond_a

    .line 672
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 674
    :cond_b
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_2

    .line 676
    :cond_c
    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    .line 677
    const/4 v5, 0x0

    .line 678
    const/4 v4, 0x4

    .line 679
    const/4 v3, 0x0

    :goto_9
    iget v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_14

    .line 680
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 681
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 682
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_d

    .line 683
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "No valid varint length mask found"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 685
    :cond_d
    const-wide/16 v6, 0x0

    .line 686
    const/4 v8, 0x0

    move v10, v8

    :goto_a
    const/16 v8, 0x8

    if-ge v10, v8, :cond_f

    .line 687
    const/4 v8, 0x1

    rsub-int/lit8 v9, v10, 0x7

    shl-int/2addr v8, v9

    .line 688
    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v12, v4, -0x1

    aget-byte v9, v9, v12

    and-int/2addr v9, v8

    if-eqz v9, :cond_11

    .line 689
    add-int/lit8 v7, v4, -0x1

    .line 690
    add-int/2addr v4, v10

    .line 691
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->readScratch(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 692
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v9, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    int-to-long v8, v7

    move v14, v6

    move-wide v6, v8

    move v8, v14

    .line 693
    :goto_b
    if-ge v8, v4, :cond_e

    .line 694
    const/16 v9, 0x8

    shl-long v12, v6, v9

    .line 695
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v7, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v8, v12

    move v14, v6

    move-wide v6, v8

    move v8, v14

    goto :goto_b

    .line 698
    :cond_e
    if-lez v3, :cond_f

    .line 699
    const-wide/16 v8, 0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    shl-long/2addr v8, v10

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    sub-long/2addr v6, v8

    .line 704
    :cond_f
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_10

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_12

    .line 705
    :cond_10
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "EBML lacing sample size out of range."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_11
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_a

    .line 707
    :cond_12
    long-to-int v6, v6

    .line 708
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    if-nez v3, :cond_13

    :goto_c
    aput v6, v7, v3

    .line 710
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 708
    :cond_13
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v6, v8

    goto :goto_c

    .line 712
    :cond_14
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumberLength:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_2

    .line 716
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected lacing value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :cond_16
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    .line 723
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 724
    :cond_18
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_5

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 741
    :cond_1a
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto/16 :goto_0

    .line 745
    :cond_1b
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockLacingSampleSizes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v11, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->writeSampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;I)V

    goto/16 :goto_0

    .line 587
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_4
        0x4255 -> :sswitch_2
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
    .end sparse-switch
.end method

.method endMasterElement(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 366
    sparse-switch p1, :sswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 370
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    .line 372
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 373
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    goto :goto_0

    .line 377
    :sswitch_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 378
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    .line 381
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    goto :goto_0

    .line 385
    :sswitch_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    if-eq v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->buildSeekMap()Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 387
    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    goto :goto_0

    .line 393
    :sswitch_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    if-ne v0, v2, :cond_0

    .line 398
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    if-nez v0, :cond_4

    .line 399
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockFlags:I

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTrackNumber:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockTimeUs:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->outputSampleMetadata(Lcom/google/android/exoplayer/extractor/TrackOutput;J)V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    goto :goto_0

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    goto :goto_1

    .line 407
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    if-nez v0, :cond_6

    .line 409
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;

    const-string v2, "video/webm"

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->encryptionKeyId:[B

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 414
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sentDrmInitData:Z

    goto/16 :goto_0

    .line 419
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleStrippedBytes:[B

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v1, :cond_8

    .line 425
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element TrackNumber or TrackType not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_b

    .line 430
    :cond_a
    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 444
    :cond_c
    :goto_2
    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 437
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    goto :goto_2

    .line 447
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->videoTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->audioTrackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    .line 448
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method

.method floatElement(ID)V
    .locals 2

    .prologue
    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 559
    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->durationTimecode:J

    goto :goto_0

    .line 562
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    goto :goto_0

    .line 557
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method getElementType(I)I
    .locals 1

    .prologue
    .line 252
    sparse-switch p1, :sswitch_data_0

    .line 309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 272
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 297
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 304
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 307
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 226
    return-void
.end method

.method integerElement(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    .line 458
    sparse-switch p1, :sswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 461
    :sswitch_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :sswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 468
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :sswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    .line 477
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->timecodeScale:J

    goto :goto_0

    .line 480
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    goto :goto_0

    .line 483
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    goto :goto_0

    .line 486
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    goto :goto_0

    .line 489
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    goto :goto_0

    .line 492
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    goto :goto_0

    .line 495
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    goto :goto_0

    .line 498
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    goto :goto_0

    .line 501
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    goto/16 :goto_0

    .line 504
    :sswitch_c
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_0

    .line 508
    :sswitch_d
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :sswitch_e
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :sswitch_f
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :sswitch_10
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :sswitch_11
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :sswitch_12
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    goto/16 :goto_0

    .line 540
    :sswitch_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    .line 545
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_0

    .line 549
    :sswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    goto/16 :goto_0

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_7
        0x9f -> :sswitch_b
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_12
        0xba -> :sswitch_5
        0xd7 -> :sswitch_6
        0xe7 -> :sswitch_14
        0xf1 -> :sswitch_13
        0xfb -> :sswitch_c
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_11
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_e
        0x53ac -> :sswitch_2
        0x56aa -> :sswitch_9
        0x56bb -> :sswitch_a
        0x23e383 -> :sswitch_8
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    move v2, v1

    .line 242
    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleRead:Z

    if-nez v3, :cond_2

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v2

    .line 244
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->maybeSeekForCues(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 248
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->blockState:I

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->reset()V

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->varintReader:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->reset()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->resetSample()V

    .line 235
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/Sniffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/Sniffer;->sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method

.method startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 361
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 317
    :sswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 318
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentPosition:J

    .line 321
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->segmentContentSize:J

    goto :goto_0

    .line 324
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryId:I

    .line 325
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekEntryPosition:J

    goto :goto_0

    .line 328
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 329
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    goto :goto_0

    .line 332
    :sswitch_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 335
    :sswitch_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    if-nez v0, :cond_0

    .line 337
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesContentPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 339
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->seekForCues:Z

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v1, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 344
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->cuesState:I

    goto :goto_0

    .line 349
    :sswitch_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->sampleSeenReferenceBlock:Z

    goto :goto_0

    .line 355
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->hasContentEncryption:Z

    goto :goto_0

    .line 358
    :sswitch_8
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method stringElement(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 570
    sparse-switch p1, :sswitch_data_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 573
    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->trackFormat:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    goto :goto_0

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
    .end sparse-switch
.end method
