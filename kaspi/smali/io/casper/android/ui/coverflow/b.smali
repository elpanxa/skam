.class Lio/casper/android/ui/coverflow/b;
.super Landroid/view/ViewGroup;
.source "CoverFlowItemWrapper.java"


# instance fields
.field private colorMatrix:Landroid/graphics/ColorMatrix;

.field private imageReflectionRatio:F

.field private isReflectionEnabled:Z

.field private originalScaledownFactor:F

.field private paint:Landroid/graphics/Paint;

.field private reflectionGap:I

.field private saturation:F

.field private wrappedViewBitmap:Landroid/graphics/Bitmap;

.field private wrappedViewDrawingCanvas:Landroid/graphics/Canvas;


# direct methods
.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/high16 v0, 0x3f800000    # 1.0f

    .line 210
    invoke-virtual {p0, v5}, Lio/casper/android/ui/coverflow/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredHeight()I

    move-result v1

    .line 215
    iget-boolean v2, p0, Lio/casper/android/ui/coverflow/b;->isReflectionEnabled:Z

    if-eqz v2, :cond_0

    int-to-float v2, v1

    iget v3, p0, Lio/casper/android/ui/coverflow/b;->imageReflectionRatio:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lio/casper/android/ui/coverflow/b;->reflectionGap:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    :cond_0
    iput v0, p0, Lio/casper/android/ui/coverflow/b;->originalScaledownFactor:F

    .line 216
    iget v0, p0, Lio/casper/android/ui/coverflow/b;->originalScaledownFactor:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 217
    iget v1, p0, Lio/casper/android/ui/coverflow/b;->originalScaledownFactor:F

    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 219
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 220
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 221
    invoke-virtual {p0, v5}, Lio/casper/android/ui/coverflow/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 223
    :cond_1
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    .line 232
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 233
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 236
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 237
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 240
    int-to-float v0, v12

    iget v1, p0, Lio/casper/android/ui/coverflow/b;->originalScaledownFactor:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 241
    sub-int v0, v12, v7

    iget v1, p0, Lio/casper/android/ui/coverflow/b;->reflectionGap:I

    sub-int v4, v0, v1

    .line 242
    sub-int v2, v7, v4

    .line 243
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    iget v4, p0, Lio/casper/android/ui/coverflow/b;->reflectionGap:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 248
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    int-to-float v0, v12

    iget v1, p0, Lio/casper/android/ui/coverflow/b;->imageReflectionRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lio/casper/android/ui/coverflow/b;->reflectionGap:I

    int-to-float v1, v1

    add-float v6, v0, v1

    const/4 v7, 0x0

    int-to-float v8, v12

    const v9, 0x70ffffff

    const v10, 0xffffff

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 249
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 250
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 251
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    int-to-float v2, v12

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lio/casper/android/ui/coverflow/b;->imageReflectionRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    int-to-float v3, v3

    int-to-float v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .prologue
    .line 137
    iget v0, p0, Lio/casper/android/ui/coverflow/b;->saturation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 138
    iput p1, p0, Lio/casper/android/ui/coverflow/b;->saturation:F

    .line 139
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 140
    iget-object v0, p0, Lio/casper/android/ui/coverflow/b;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lio/casper/android/ui/coverflow/b;->colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 142
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/coverflow/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 193
    iget-boolean v1, p0, Lio/casper/android/ui/coverflow/b;->isReflectionEnabled:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0}, Lio/casper/android/ui/coverflow/b;->b()V

    .line 202
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lio/casper/android/ui/coverflow/b;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 164
    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredWidth()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredHeight()I

    move-result v1

    .line 168
    iget-object v2, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 169
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    .line 170
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lio/casper/android/ui/coverflow/b;->wrappedViewDrawingCanvas:Landroid/graphics/Canvas;

    .line 173
    :cond_1
    invoke-virtual {p0, v4}, Lio/casper/android/ui/coverflow/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 176
    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    .line 177
    sub-int/2addr v0, v2

    .line 178
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 180
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 151
    invoke-direct {p0}, Lio/casper/android/ui/coverflow/b;->a()V

    .line 156
    iget-boolean v0, p0, Lio/casper/android/ui/coverflow/b;->isReflectionEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/casper/android/ui/coverflow/b;->originalScaledownFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/b;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/ui/coverflow/b;->setMeasuredDimension(II)V

    .line 159
    :cond_0
    return-void
.end method
