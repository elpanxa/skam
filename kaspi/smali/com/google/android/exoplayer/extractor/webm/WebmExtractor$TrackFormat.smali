.class final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;
.super Ljava/lang/Object;
.source "WebmExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackFormat"
.end annotation


# instance fields
.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public encryptionKeyId:[B

.field public hasContentEncryption:Z

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public pixelHeight:I

.field public pixelWidth:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->number:I

    .line 1044
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->type:I

    .line 1045
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->defaultSampleDurationNs:I

    .line 1052
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    .line 1053
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    .line 1054
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    .line 1057
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    .line 1058
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    .line 1059
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    .line 1060
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V
    .locals 0

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;-><init>()V

    return-void
.end method

.method private static parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1146
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 1148
    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 1149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v4, v1, 0x1f

    move v1, v0

    .line 1151
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1152
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    .line 1148
    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1155
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1156
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1158
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing AVC codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1174
    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 1180
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    move v3, v1

    move v4, v1

    .line 1181
    :goto_0
    if-ge v3, v6, :cond_1

    .line 1182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v0, v1

    move v2, v4

    .line 1184
    :goto_1
    if-ge v0, v8, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1186
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    .line 1187
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1193
    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    .line 1195
    :goto_2
    if-ge v3, v6, :cond_3

    .line 1196
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v2, v0

    move v0, v1

    .line 1198
    :goto_3
    if-ge v0, v8, :cond_2

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1200
    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    invoke-static {v10, v11, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1202
    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v10, v10

    add-int/2addr v2, v10

    .line 1203
    iget-object v10, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1205
    add-int/2addr v2, v9

    .line 1206
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1198
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1195
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_2

    .line 1210
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    .line 1211
    :goto_4
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1210
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_4

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing HEVC codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1226
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_0

    .line 1227
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    .line 1231
    :goto_0
    :try_start_1
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    .line 1232
    add-int/lit16 v1, v2, 0xff

    .line 1233
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1235
    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    .line 1238
    :goto_1
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_2

    .line 1239
    add-int/lit16 v0, v0, 0xff

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1242
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    .line 1244
    aget-byte v1, p0, v3

    if-eq v1, v4, :cond_3

    .line 1245
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_3
    new-array v1, v2, [B

    .line 1248
    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    add-int/2addr v2, v3

    .line 1250
    aget-byte v3, p0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 1251
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_4
    add-int/2addr v0, v2

    .line 1254
    aget-byte v2, p0, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 1255
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_5
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 1258
    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1260
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1262
    return-object v0
.end method


# virtual methods
.method public getMediaFormat(J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x40

    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 1067
    .line 1069
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1122
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :sswitch_0
    const-string v4, "V_VP8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "V_VP9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v4, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "A_VORBIS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "A_OPUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "A_AAC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "A_MPEG/L3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "A_AC3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    .line 1071
    :pswitch_0
    const-string v1, "video/x-vnd.on2.vp8"

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .line 1125
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->channelCount:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->sampleRate:I

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 1129
    :goto_2
    return-object v0

    .line 1074
    :pswitch_1
    const-string v1, "video/x-vnd.on2.vp9"

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .line 1075
    goto :goto_1

    .line 1079
    :pswitch_2
    const-string v1, "video/mp4v-es"

    .line 1080
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    if-nez v3, :cond_1

    :goto_3
    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .line 1082
    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1084
    :pswitch_3
    const-string v3, "video/avc"

    .line 1085
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseAvcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 1087
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1088
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    move v1, v2

    move-object v6, v0

    move-object v0, v3

    .line 1089
    goto :goto_1

    .line 1091
    :pswitch_4
    const-string v3, "video/hevc"

    .line 1092
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseHevcCodecPrivate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 1094
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1095
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->nalUnitLengthFieldLength:I

    move v1, v2

    move-object v6, v0

    move-object v0, v3

    .line 1096
    goto :goto_1

    .line 1098
    :pswitch_5
    const-string v2, "audio/vorbis"

    .line 1099
    const/16 v1, 0x2000

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    move-object v0, v2

    .line 1101
    goto :goto_1

    .line 1103
    :pswitch_6
    const-string v2, "audio/opus"

    .line 1104
    const/16 v1, 0x1680

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1106
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecDelayNs:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->seekPreRollNs:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    move-object v0, v2

    .line 1109
    goto/16 :goto_1

    .line 1111
    :pswitch_7
    const-string v1, "audio/mp4a-latm"

    .line 1112
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .line 1113
    goto/16 :goto_1

    .line 1115
    :pswitch_8
    const/16 v1, 0x1000

    .line 1116
    const-string v2, "audio/mpeg"

    move-object v6, v0

    move-object v0, v2

    .line 1117
    goto/16 :goto_1

    .line 1119
    :pswitch_9
    const-string v1, "audio/ac3"

    move-object v6, v0

    move-object v0, v1

    move v1, v2

    .line 1120
    goto/16 :goto_1

    .line 1128
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelWidth:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->pixelHeight:I

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    goto/16 :goto_2

    .line 1132
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_4
        -0x7ce7f3b0 -> :sswitch_2
        -0x672350af -> :sswitch_7
        -0x585f4fcd -> :sswitch_a
        -0x2016c535 -> :sswitch_3
        -0x2016c4e5 -> :sswitch_5
        0x3c02325 -> :sswitch_9
        0x3c02353 -> :sswitch_b
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x32fdf009 -> :sswitch_6
        0x744ad97d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
