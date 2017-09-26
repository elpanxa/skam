.class public Lcom/gc/materialdesign/views/LayoutRipple;
.super Lcom/gc/materialdesign/views/CustomView;
.source "LayoutRipple.java"


# instance fields
.field background:I

.field backgroundColor:I

.field onClickListener:Landroid/view/View$OnClickListener;

.field radius:F

.field rippleColor:Ljava/lang/Integer;

.field rippleSize:I

.field rippleSpeed:F

.field x:F

.field xRippleOrigin:Ljava/lang/Float;

.field y:F

.field yRippleOrigin:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSpeed:F

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSize:I

    .line 20
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    .line 81
    iput v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    iput v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 82
    iput v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    .line 28
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/LayoutRipple;->setAttributes(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public makeCircle()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 141
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->makePressColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleColor:Ljava/lang/Integer;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->xRippleOrigin:Ljava/lang/Float;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    :goto_0
    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 147
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->yRippleOrigin:Ljava/lang/Float;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    :goto_1
    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 148
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    iget v4, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    iget v5, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSize:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 150
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    iget v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSpeed:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    .line 151
    :cond_1
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 152
    iput v6, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 153
    iput v6, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 154
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSize:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    .line 155
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 158
    :cond_2
    return-object v1

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->xRippleOrigin:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->yRippleOrigin:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method

.method protected makePressColor()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 177
    iget v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 178
    iget v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v2, 0xff

    .line 179
    iget v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v4, v2, 0xff

    .line 180
    add-int/lit8 v2, v1, -0x1e

    if-gez v2, :cond_0

    move v2, v0

    .line 181
    :goto_0
    add-int/lit8 v1, v3, -0x1e

    if-gez v1, :cond_1

    move v1, v0

    .line 182
    :goto_1
    add-int/lit8 v3, v4, -0x1e

    if-gez v3, :cond_2

    .line 183
    :goto_2
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 180
    :cond_0
    add-int/lit8 v1, v1, -0x1e

    move v2, v1

    goto :goto_0

    .line 181
    :cond_1
    add-int/lit8 v1, v3, -0x1e

    goto :goto_1

    .line 182
    :cond_2
    add-int/lit8 v0, v4, -0x1e

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/CustomView;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->makeCircle()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->invalidate()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 124
    if-nez p1, :cond_0

    .line 125
    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 126
    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 128
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 86
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->invalidate()V

    .line 87
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/LayoutRipple;->isLastTouch:Z

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 113
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/LayoutRipple;->isLastTouch:Z

    .line 114
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 115
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 118
    :cond_1
    return v5

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    .line 99
    :cond_3
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/LayoutRipple;->isLastTouch:Z

    .line 100
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 101
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 106
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->radius:F

    goto/16 :goto_0

    .line 108
    :cond_5
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/LayoutRipple;->isLastTouch:Z

    .line 109
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->x:F

    .line 110
    iput v2, p0, Lcom/gc/materialdesign/views/LayoutRipple;->y:F

    goto/16 :goto_0
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 36
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 38
    if-eq v0, v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setBackgroundColor(I)V

    .line 50
    :goto_0
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleColor"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 52
    if-eq v0, v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setRippleColor(I)V

    .line 63
    :goto_1
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleSpeed"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSpeed:F

    .line 65
    return-void

    .line 42
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->background:I

    .line 43
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->background:I

    if-eq v0, v2, :cond_1

    .line 44
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->background:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setBackgroundColor(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setBackgroundColor(I)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleColor"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 57
    if-eq v0, v2, :cond_3

    .line 58
    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setRippleColor(I)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->makePressColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/LayoutRipple;->setRippleColor(I)V

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 69
    iput p1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    .line 70
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/LayoutRipple;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->beforeBackground:I

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/CustomView;->setBackgroundColor(I)V

    .line 73
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->onClickListener:Landroid/view/View$OnClickListener;

    .line 189
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleColor:Ljava/lang/Integer;

    .line 193
    return-void
.end method

.method public setRippleSpeed(I)V
    .locals 1

    .prologue
    .line 76
    int-to-float v0, p1

    iput v0, p0, Lcom/gc/materialdesign/views/LayoutRipple;->rippleSpeed:F

    .line 77
    return-void
.end method

.method public setxRippleOrigin(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->xRippleOrigin:Ljava/lang/Float;

    .line 197
    return-void
.end method

.method public setyRippleOrigin(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/gc/materialdesign/views/LayoutRipple;->yRippleOrigin:Ljava/lang/Float;

    .line 201
    return-void
.end method
