.class public Lcom/flask/colorpicker/slider/AlphaSlider;
.super Lcom/flask/colorpicker/slider/AbsCustomSlider;
.source "AlphaSlider.java"


# instance fields
.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field public color:I

.field private colorPicker:Lcom/flask/colorpicker/ColorPickerView;

.field private solid:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    .line 18
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    .line 18
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    .line 18
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 32
    return-void
.end method


# virtual methods
.method protected createBitmaps()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->createBitmaps()V

    .line 37
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    return-void
.end method

.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 45
    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46
    const/4 v0, 0x2

    div-int/lit16 v2, v8, 0x100

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v8, :cond_0

    .line 48
    int-to-float v2, v0

    add-int/lit8 v3, v8, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 49
    iget-object v3, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v3, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    int-to-float v3, v0

    add-int v2, v0, v10

    int-to-float v5, v2

    int-to-float v6, v9

    iget-object v7, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    add-int/2addr v0, v10

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f400000    # 0.75f

    .line 63
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->value:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 67
    iget v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    :cond_0
    iget v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setAlphaValue(F)V

    .line 59
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 76
    iput p1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->color:I

    .line 77
    invoke-static {p1}, Lcom/flask/colorpicker/Utils;->getAlphaPercent(I)F

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->value:F

    .line 78
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AlphaSlider;->updateBar()V

    .line 80
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AlphaSlider;->invalidate()V

    .line 82
    :cond_0
    return-void
.end method

.method public setColorPicker(Lcom/flask/colorpicker/ColorPickerView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flask/colorpicker/slider/AlphaSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    .line 73
    return-void
.end method
