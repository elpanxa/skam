.class public final Lcom/google/android/exoplayer/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# static fields
.field private static final KEY_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String; = "com.google.android.videos.pixelWidthHeightRatio"

.field public static final NO_VALUE:I = -0x1


# instance fields
.field public final channelCount:I

.field public final durationUs:J

.field private frameworkMediaFormat:Landroid/media/MediaFormat;

.field private hashCode:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private maxHeight:I

.field public final maxInputSize:I

.field private maxWidth:I

.field public final mimeType:Ljava/lang/String;

.field public final pixelWidthHeightRatio:F

.field public final sampleRate:I

.field public final width:I


# direct methods
.method private constructor <init>(Landroid/media/MediaFormat;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 116
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 117
    const-string v0, "max-input-size"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    .line 118
    const-string v0, "width"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    .line 119
    const-string v0, "height"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    .line 120
    const-string v0, "channel-count"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    .line 121
    const-string v0, "sample-rate"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    .line 122
    const-string v0, "com.google.android.videos.pixelWidthHeightRatio"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->getOptionalFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    .line 124
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 127
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    .line 133
    iput v4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    .line 134
    iput v4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    .line 135
    return-void

    .line 131
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;IJIIFIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIFII",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    .line 142
    iput-wide p3, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    .line 143
    iput p5, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    .line 144
    iput p6, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    .line 145
    iput p7, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    .line 146
    iput p8, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    .line 147
    iput p9, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    .line 148
    if-nez p10, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    :cond_0
    iput-object p10, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    .line 150
    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    .line 151
    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    .line 152
    return-void
.end method

.method public static createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createFormatForMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->createFormatForMimeType(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createFormatForMimeType(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 13

    .prologue
    const/4 v3, -0x1

    .line 109
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v11, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createFromFrameworkMediaFormatV16(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer/MediaFormat;->createFormatForMimeType(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 68
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJIIF",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;IJIIFIILjava/util/List;)V

    return-object v1
.end method

.method public static createVideoFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 74
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private equalsInternal(Lcom/google/android/exoplayer/MediaFormat;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    iget v1, p1, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 227
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v2, v3

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 227
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static final getOptionalFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;)F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private static final getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 281
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 284
    :cond_0
    return-void
.end method

.method private static final maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 273
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 274
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 276
    :cond_0
    return-void
.end method

.method private final maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 266
    const-string v0, "max-width"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 267
    const-string v0, "max-height"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 268
    return-void
.end method


# virtual methods
.method public equals(Lcom/google/android/exoplayer/MediaFormat;Z)Z
    .locals 1

    .prologue
    .line 204
    if-ne p0, p1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/MediaFormat;->equalsInternal(Lcom/google/android/exoplayer/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 195
    const/4 v0, 0x1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 200
    check-cast p1, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/MediaFormat;->equalsInternal(Lcom/google/android/exoplayer/MediaFormat;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 243
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 244
    const-string v0, "mime"

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "max-input-size"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 246
    const-string v0, "width"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 247
    const-string v0, "height"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 248
    const-string v0, "channel-count"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    const-string v0, "sample-rate"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 250
    const-string v0, "com.google.android.videos.pixelWidthHeightRatio"

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 251
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 251
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "durationUs"

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 257
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V

    .line 258
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getMaxVideoHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    return v0
.end method

.method public getMaxVideoWidth()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    add-int/2addr v0, v2

    .line 177
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    add-int/2addr v0, v2

    .line 184
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v2

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 187
    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    .line 189
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    return v0
.end method

.method public setMaxVideoDimensions(II)V
    .locals 1

    .prologue
    .line 155
    iput p1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    .line 156
    iput p2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetMaxDimensionsV16(Landroid/media/MediaFormat;)V

    .line 160
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
