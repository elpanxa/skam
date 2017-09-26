.class public abstract Lcom/flask/colorpicker/slider/AbsCustomSlider;
.super Landroid/view/View;
.source "AbsCustomSlider.java"


# instance fields
.field protected bar:Landroid/graphics/Bitmap;

.field protected barCanvas:Landroid/graphics/Canvas;

.field protected barHeight:I

.field protected barOffsetX:I

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected bitmapCanvas:Landroid/graphics/Canvas;

.field protected handleRadius:I

.field protected onValueChangedListener:Lcom/flask/colorpicker/slider/OnValueChangedListener;

.field protected value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barHeight:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barHeight:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barHeight:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    .line 35
    return-void
.end method


# virtual methods
.method protected createBitmaps()V
    .locals 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getWidth()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getHeight()I

    move-result v1

    .line 51
    iget v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barOffsetX:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    .line 52
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barCanvas:Landroid/graphics/Canvas;

    .line 54
    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 59
    :cond_2
    return-void
.end method

.method protected abstract drawBar(Landroid/graphics/Canvas;)V
.end method

.method protected abstract drawHandle(Landroid/graphics/Canvas;FF)V
.end method

.method protected getDimension(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barOffsetX:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 68
    iget v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 70
    iget-object v2, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v2, v0, v1}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->drawHandle(Landroid/graphics/Canvas;FF)V

    .line 71
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/high16 v2, -0x80000000

    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 92
    if-nez v1, :cond_0

    .line 99
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 101
    if-nez v1, :cond_2

    .line 108
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->setMeasuredDimension(II)V

    .line 109
    return-void

    .line 94
    :cond_0
    if-ne v1, v2, :cond_1

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 96
    :cond_1
    if-ne v1, v3, :cond_5

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 103
    :cond_2
    if-ne v1, v2, :cond_3

    .line 104
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 105
    :cond_3
    if-ne v1, v3, :cond_4

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_1

    :cond_5
    move p1, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    .line 117
    const/4 v0, 0x0

    iget v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    .line 118
    iget v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->onValueChanged(F)V

    .line 119
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->invalidate()V

    goto :goto_0

    .line 123
    :pswitch_1
    iget v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->onValueChanged(F)V

    .line 124
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->onValueChangedListener:Lcom/flask/colorpicker/slider/OnValueChangedListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->onValueChangedListener:Lcom/flask/colorpicker/slider/OnValueChangedListener;

    iget v1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->value:F

    invoke-interface {v0, v1}, Lcom/flask/colorpicker/slider/OnValueChangedListener;->onValueChanged(F)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->invalidate()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onValueChanged(F)V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->updateBar()V

    .line 85
    return-void
.end method

.method public setOnValueChangedListener(Lcom/flask/colorpicker/slider/OnValueChangedListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->onValueChangedListener:Lcom/flask/colorpicker/slider/OnValueChangedListener;

    .line 138
    return-void
.end method

.method protected updateBar()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/flask/colorpicker/R$dimen;->default_slider_handler_radius:I

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    .line 39
    sget v0, Lcom/flask/colorpicker/R$dimen;->default_slider_bar_height:I

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barHeight:I

    .line 40
    iget v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->handleRadius:I

    iput v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barOffsetX:I

    .line 42
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->bar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->createBitmaps()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/slider/AbsCustomSlider;->barCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->drawBar(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0}, Lcom/flask/colorpicker/slider/AbsCustomSlider;->invalidate()V

    .line 46
    return-void
.end method
