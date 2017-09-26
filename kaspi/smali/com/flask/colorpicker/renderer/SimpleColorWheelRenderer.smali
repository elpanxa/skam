.class public Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;
.super Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;
.source "SimpleColorWheelRenderer.java"


# instance fields
.field private hsv:[F

.field private selectorFill:Landroid/graphics/Paint;


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

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 20

    .prologue
    .line 18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 19
    const/4 v3, 0x0

    .line 20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget-object v2, v2, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v7, v2, v4

    .line 21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v8, v2, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->density:I

    .line 22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v9, v2, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->maxRadius:F

    .line 24
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v8, :cond_2

    .line 25
    int-to-float v2, v5

    add-int/lit8 v4, v8, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 26
    mul-float v10, v9, v2

    .line 27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v11, v2, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->cSize:F

    .line 28
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->calcTotalCount(FF)I

    move-result v12

    .line 30
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_1
    if-ge v3, v12, :cond_1

    .line 31
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    int-to-double v0, v12

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-int/lit8 v2, v5, 0x1

    rem-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 32
    float-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    add-float v13, v7, v2

    .line 33
    float-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    add-float v16, v7, v2

    .line 34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    const/16 v17, 0x0

    const-wide v18, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v18

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v18

    double-to-float v14, v14

    aput v14, v2, v17

    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    const/4 v14, 0x1

    div-float v15, v10, v9

    aput v15, v2, v14

    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v15, v15, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->lightness:F

    aput v15, v2, v14

    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->getAlphaValueAsInt()I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget-object v2, v2, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v14, v14, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->strokeWidth:F

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->selectorFill:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v2, v13, v0, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    if-lt v4, v6, :cond_0

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    new-instance v14, Lcom/flask/colorpicker/ColorCircle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    move/from16 v0, v16

    invoke-direct {v14, v13, v0, v15}, Lcom/flask/colorpicker/ColorCircle;-><init>(FF[F)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 30
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    .line 44
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->colorCircleList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flask/colorpicker/ColorCircle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flask/colorpicker/renderer/SimpleColorWheelRenderer;->hsv:[F

    move/from16 v0, v16

    invoke-virtual {v2, v13, v0, v14}, Lcom/flask/colorpicker/ColorCircle;->set(FF[F)V

    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v4

    goto/16 :goto_0

    .line 48
    :cond_2
    return-void
.end method
