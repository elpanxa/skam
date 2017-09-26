.class public Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;
.super Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;
.source "FlowerColorWheelRenderer.java"


# instance fields
.field private hsv:[F

.field private selectorFill:Landroid/graphics/Paint;

.field private sizeJitter:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;-><init>()V

    .line 13
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    .line 15
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->sizeJitter:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 24

    .prologue
    .line 19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget-object v4, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v9, v4, v6

    .line 22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v10, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->density:I

    .line 23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v11, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->strokeWidth:F

    .line 24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v12, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->maxRadius:F

    .line 25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v13, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->cSize:F

    .line 27
    const/4 v4, 0x0

    move v7, v4

    :goto_0
    if-ge v7, v10, :cond_3

    .line 28
    int-to-float v4, v7

    add-int/lit8 v6, v10, -0x1

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 29
    int-to-float v6, v7

    int-to-float v14, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v6, v14

    int-to-float v14, v10

    div-float/2addr v6, v14

    .line 30
    mul-float v14, v12, v4

    .line 31
    const/high16 v4, 0x3fc00000    # 1.5f

    add-float v15, v4, v11

    if-nez v7, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-float/2addr v4, v13

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 32
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->calcTotalCount(FF)I

    move-result v4

    mul-int/lit8 v6, v10, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 34
    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_2
    move/from16 v0, v16

    if-ge v5, v0, :cond_2

    .line 35
    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v5

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-int/lit8 v4, v7, 0x1

    rem-int/lit8 v4, v4, 0x2

    int-to-double v0, v4

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    .line 36
    float-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v4, v0

    add-float v17, v9, v4

    .line 37
    float-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v4, v0

    add-float v20, v9, v4

    .line 38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    const/16 v21, 0x0

    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v18, v18, v22

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    div-double v18, v18, v22

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v4, v21

    .line 39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    const/16 v18, 0x1

    div-float v19, v14, v12

    aput v19, v4, v18

    .line 40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->lightness:F

    move/from16 v19, v0

    aput v19, v4, v18

    .line 41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->getAlphaValueAsInt()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget-object v4, v4, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    sub-float v18, v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    if-lt v6, v8, :cond_1

    .line 47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    new-instance v18, Lcom/flask/colorpicker/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/flask/colorpicker/ColorCircle;-><init>(FF[F)V

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 34
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_2

    .line 31
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->sizeJitter:F

    mul-float/2addr v4, v13

    mul-float/2addr v4, v6

    goto/16 :goto_1

    .line 48
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->colorCircleList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flask/colorpicker/ColorCircle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;->hsv:[F

    move-object/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/flask/colorpicker/ColorCircle;->set(FF[F)V

    goto :goto_3

    .line 27
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v5, v6

    goto/16 :goto_0

    .line 52
    :cond_3
    return-void
.end method
