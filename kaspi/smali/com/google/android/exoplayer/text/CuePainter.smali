.class final Lcom/google/android/exoplayer/text/CuePainter;
.super Ljava/lang/Object;
.source "CuePainter.java"


# static fields
.field private static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final LINE_HEIGHT_FRACTION:F = 0.0533f

.field private static final TAG:Ljava/lang/String; = "CuePainter"


# instance fields
.field private backgroundColor:I

.field private final cornerRadius:F

.field private cueAlignment:Landroid/text/Layout$Alignment;

.field private cuePosition:I

.field private cueText:Ljava/lang/CharSequence;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    .line 100
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    const/high16 v1, 0x40000000    # 2.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 106
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    .line 107
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->outlineWidth:F

    .line 108
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    .line 109
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    .line 111
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 240
    iget-object v9, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 241
    if-nez v9, :cond_0

    .line 296
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 247
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->textTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    .line 258
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move v1, v0

    move v0, v8

    .line 259
    :goto_1
    if-ge v0, v3, :cond_2

    .line 260
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    iget v11, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    int-to-float v11, v11

    sub-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 261
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v5

    iget v11, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    int-to-float v11, v11

    add-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 262
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 263
    iget-object v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 264
    iget-object v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 265
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->lineBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    iget v11, p0, Lcom/google/android/exoplayer/text/CuePainter;->cornerRadius:F

    iget-object v12, p0, Lcom/google/android/exoplayer/text/CuePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    if-ne v0, v7, :cond_4

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->outlineWidth:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 290
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2, v2, v2, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 295
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 275
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    iget v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowOffset:F

    iget v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 277
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    if-eq v0, v13, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 279
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    if-ne v0, v13, :cond_7

    move v3, v7

    .line 280
    :goto_3
    if-eqz v3, :cond_8

    move v1, v6

    .line 281
    :goto_4
    if-eqz v3, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    .line 282
    :goto_5
    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 283
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 284
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    neg-float v6, v3

    neg-float v7, v3

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 286
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    iget-object v1, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->shadowRadius:F

    invoke-virtual {v1, v4, v3, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_7
    move v3, v8

    .line 279
    goto :goto_3

    .line 280
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v6

    .line 281
    goto :goto_5
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer/text/Cue;Lcom/google/android/exoplayer/text/CaptionStyleCompat;FLandroid/graphics/Canvas;IIII)V
    .locals 13

    .prologue
    .line 138
    iget-object v2, p1, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cuePosition:I

    iget v3, p1, Lcom/google/android/exoplayer/text/Cue;->position:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    iget v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    iget v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    iget v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    iget v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    iget v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    move/from16 v0, p5

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move/from16 v0, p8

    if-ne v2, v0, :cond_1

    .line 157
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/CuePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    .line 162
    iget v2, p1, Lcom/google/android/exoplayer/text/Cue;->position:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cuePosition:I

    .line 163
    iget-object v2, p1, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    .line 164
    iget v2, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->foregroundColor:I

    .line 165
    iget v2, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->backgroundColor:I

    .line 166
    iget v2, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->windowColor:I

    .line 167
    iget v2, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeType:I

    .line 168
    iget v2, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    iput v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->edgeColor:I

    .line 169
    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    move/from16 v0, p5

    iput v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    .line 171
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    .line 172
    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    .line 173
    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    .line 175
    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    sub-int v10, v2, v3

    .line 176
    iget v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    sub-int v11, v2, v3

    .line 178
    const v2, 0x3d5a511a    # 0.0533f

    int-to-float v3, v11

    mul-float/2addr v2, v3

    mul-float v2, v2, p3

    .line 179
    iget-object v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 180
    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v12, v2

    .line 181
    mul-int/lit8 v2, v12, 0x2

    sub-int v5, v10, v2

    .line 182
    if-gtz v5, :cond_2

    .line 183
    const-string v2, "CuePainter"

    const-string v3, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 188
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    iget v8, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 191
    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    .line 192
    const/4 v3, 0x0

    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    .line 194
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    .line 195
    iget-object v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueAlignment:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 197
    :cond_4
    mul-int/lit8 v2, v12, 0x2

    add-int v7, v3, v2

    .line 199
    sub-int v2, v10, v7

    div-int/lit8 v3, v2, 0x2

    .line 200
    add-int v2, v3, v7

    .line 201
    iget v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    sub-int/2addr v4, v5

    int-to-float v8, v11

    const v9, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v4, v8

    .line 203
    add-int v8, v4, v5

    .line 205
    iget v8, p1, Lcom/google/android/exoplayer/text/Cue;->position:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 206
    iget-object v2, p1, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_5

    .line 207
    iget v2, p1, Lcom/google/android/exoplayer/text/Cue;->position:I

    mul-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    add-int/2addr v2, v3

    .line 208
    sub-int v3, v2, v7

    iget v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v10, v3

    .line 214
    :goto_3
    iget v3, p1, Lcom/google/android/exoplayer/text/Cue;->line:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_7

    .line 215
    iget v3, p1, Lcom/google/android/exoplayer/text/Cue;->line:I

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentTop:I

    add-int/2addr v3, v4

    .line 216
    add-int v4, v3, v5

    .line 217
    iget v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    if-le v4, v7, :cond_6

    .line 218
    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    sub-int/2addr v3, v5

    .line 219
    iget v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentBottom:I

    move v11, v3

    .line 222
    :goto_4
    sub-int v5, v2, v10

    .line 225
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingMult:F

    iget v8, p0, Lcom/google/android/exoplayer/text/CuePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLayout:Landroid/text/StaticLayout;

    .line 227
    iput v10, p0, Lcom/google/android/exoplayer/text/CuePainter;->textLeft:I

    .line 228
    iput v11, p0, Lcom/google/android/exoplayer/text/CuePainter;->textTop:I

    .line 229
    iput v12, p0, Lcom/google/android/exoplayer/text/CuePainter;->textPaddingX:I

    .line 231
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/CuePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 210
    :cond_5
    iget v2, p1, Lcom/google/android/exoplayer/text/Cue;->position:I

    mul-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentLeft:I

    add-int/2addr v3, v2

    .line 211
    add-int v2, v3, v7

    iget v7, p0, Lcom/google/android/exoplayer/text/CuePainter;->parentRight:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v10, v3

    goto :goto_3

    :cond_6
    move v11, v3

    goto :goto_4

    :cond_7
    move v11, v4

    goto :goto_4

    :cond_8
    move v10, v3

    goto :goto_3
.end method
