.class public Lcom/flask/colorpicker/slider/LightnessSlider;
.super Lcom/flask/colorpicker/slider/AbsCustomSlider;
.source "LightnessSlider.java"


# instance fields
.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field private color:I

.field private colorPicker:Lcom/flask/colorpicker/ColorPickerView;

.field private solid:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/flask/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    .line 17
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    .line 32
    return-void
.end method


# virtual methods
.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 39
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 40
    iget v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->color:I

    invoke-static {v0, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 41
    div-int/lit16 v0, v7, 0x100

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 42
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-gt v6, v7, :cond_0

    .line 43
    int-to-float v0, v6

    add-int/lit8 v1, v7, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, v9, v11

    .line 44
    iget-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    int-to-float v1, v6

    const/4 v2, 0x0

    add-int v0, v6, v10

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    add-int v0, v6, v10

    move v6, v0

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->color:I

    iget v2, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->value:F

    invoke-static {v1, v2}, Lcom/flask/colorpicker/Utils;->colorAtLightness(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    iget v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setLightness(F)V

    .line 53
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 67
    iput p1, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->color:I

    .line 68
    invoke-static {p1}, Lcom/flask/colorpicker/Utils;->lightnessOfColor(I)F

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->value:F

    .line 69
    iget-object v0, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/LightnessSlider;->updateBar()V

    .line 71
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/LightnessSlider;->invalidate()V

    .line 73
    :cond_0
    return-void
.end method

.method public setColorPicker(Lcom/flask/colorpicker/ColorPickerView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flask/colorpicker/slider/LightnessSlider;->colorPicker:Lcom/flask/colorpicker/ColorPickerView;

    .line 64
    return-void
.end method
