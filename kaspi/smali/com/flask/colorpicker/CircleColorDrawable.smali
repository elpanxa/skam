.class public Lcom/flask/colorpicker/CircleColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "CircleColorDrawable.java"


# instance fields
.field private fillBackPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 13
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 14
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 15
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 13
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 14
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 15
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 30
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 31
    const/high16 v1, 0x41400000    # 12.0f

    div-float v1, v0, v1

    iput v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    .line 33
    iget-object v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/flask/colorpicker/CircleColorDrawable;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    mul-float/2addr v1, v3

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    mul-float/2addr v1, v3

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/flask/colorpicker/CircleColorDrawable;->invalidateSelf()V

    .line 44
    return-void
.end method
