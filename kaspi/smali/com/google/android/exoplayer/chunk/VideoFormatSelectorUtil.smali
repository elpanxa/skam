.class public final Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;
.super Ljava/lang/Object;
.source "VideoFormatSelectorUtil.java"


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 189
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 190
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 192
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 207
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 202
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 212
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 213
    return-void
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v2, v0

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v2, v0, :cond_0

    move v3, p1

    move p1, p2

    move p2, v3

    .line 178
    :cond_0
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 180
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 183
    :goto_2
    return-object v0

    :cond_1
    move v2, v1

    .line 171
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 183
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    const/16 v2, 0x500

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    const/16 v2, 0x2d0

    if-ge v1, v2, :cond_0

    .line 153
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v1, :cond_3

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v2, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v1, v2

    if-gt v1, p3, :cond_0

    .line 162
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "ZZII)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 96
    const v4, 0x7fffffff

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v7

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 102
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_0

    .line 103
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v3}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v9

    .line 104
    move/from16 v0, p2

    invoke-static {v9, p1, v0, v7}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->isFormatPlayable(Lcom/google/android/exoplayer/chunk/Format;[Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget v3, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v3, :cond_3

    iget v3, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v3, :cond_3

    .line 112
    iget v3, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v10, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v3, v10}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v10

    .line 114
    iget v3, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v11, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v3, v11

    .line 115
    iget v11, v9, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v12, v10, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v11, v12, :cond_3

    iget v9, v9, Lcom/google/android/exoplayer/chunk/Format;->height:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const v11, 0x3f7ae148    # 0.98f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v9, v10, :cond_3

    if-ge v3, v4, :cond_3

    .line 102
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :goto_2
    if-ltz v5, :cond_2

    .line 128
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/FormatWrapper;

    invoke-interface {v3}, Lcom/google/android/exoplayer/chunk/FormatWrapper;->getFormat()Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v3

    .line 129
    iget v7, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    if-lez v7, :cond_1

    iget v7, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-lez v7, :cond_1

    iget v7, v3, Lcom/google/android/exoplayer/chunk/Format;->width:I

    iget v3, v3, Lcom/google/android/exoplayer/chunk/Format;->height:I

    mul-int/2addr v3, v7

    if-le v3, v4, :cond_1

    .line 131
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    :cond_1
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    goto :goto_2

    .line 135
    :cond_2
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v3

    return-object v3

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 59
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    .line 61
    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZII)[I

    move-result-object v0

    return-object v0
.end method
