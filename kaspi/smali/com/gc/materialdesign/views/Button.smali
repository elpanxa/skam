.class public abstract Lcom/gc/materialdesign/views/Button;
.super Lcom/gc/materialdesign/views/CustomView;
.source "Button.java"


# static fields
.field static final ANDROIDXML:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field background:I

.field backgroundColor:I

.field clickAfterRipple:Z

.field minHeight:I

.field minWidth:I

.field onClickListener:Landroid/view/View$OnClickListener;

.field radius:F

.field rippleColor:Ljava/lang/Integer;

.field rippleSize:I

.field rippleSpeed:F

.field textButton:Landroid/widget/TextView;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->rippleSpeed:F

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->rippleSize:I

    .line 31
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Button;->clickAfterRipple:Z

    .line 32
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    .line 60
    iput v1, p0, Lcom/gc/materialdesign/views/Button;->x:F

    iput v1, p0, Lcom/gc/materialdesign/views/Button;->y:F

    .line 61
    iput v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 37
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->setDefaultProperties()V

    .line 38
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "animate"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Button;->clickAfterRipple:Z

    .line 40
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/Button;->setAttributes(Landroid/util/AttributeSet;)V

    .line 41
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->beforeBackground:I

    .line 42
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->rippleColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->makePressColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/Button;->rippleColor:Ljava/lang/Integer;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getRippleSpeed()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->rippleSpeed:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->textButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public makeCircle()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getWidth()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v3, p0, Lcom/gc/materialdesign/views/Button;->rippleColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget v3, p0, Lcom/gc/materialdesign/views/Button;->x:F

    iget v4, p0, Lcom/gc/materialdesign/views/Button;->y:F

    iget v5, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/gc/materialdesign/views/Button;->rippleSize:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 129
    iget v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    iget v2, p0, Lcom/gc/materialdesign/views/Button;->rippleSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 130
    :cond_0
    iget v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 131
    iput v6, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 132
    iput v6, p0, Lcom/gc/materialdesign/views/Button;->y:F

    .line 133
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/gc/materialdesign/views/Button;->rippleSize:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 134
    iget-object v1, p0, Lcom/gc/materialdesign/views/Button;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gc/materialdesign/views/Button;->clickAfterRipple:Z

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/gc/materialdesign/views/Button;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 137
    :cond_1
    return-object v0
.end method

.method protected makePressColor()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 146
    iget v1, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 147
    iget v2, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v2, 0xff

    .line 148
    iget v2, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v4, v2, 0xff

    .line 149
    add-int/lit8 v2, v1, -0x1e

    if-gez v2, :cond_0

    move v2, v0

    .line 150
    :goto_0
    add-int/lit8 v1, v3, -0x1e

    if-gez v1, :cond_1

    move v1, v0

    .line 151
    :goto_1
    add-int/lit8 v3, v4, -0x1e

    if-gez v3, :cond_2

    .line 152
    :goto_2
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 149
    :cond_0
    add-int/lit8 v1, v1, -0x1e

    move v2, v1

    goto :goto_0

    .line 150
    :cond_1
    add-int/lit8 v1, v3, -0x1e

    goto :goto_1

    .line 151
    :cond_2
    add-int/lit8 v0, v4, -0x1e

    goto :goto_2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 106
    if-nez p1, :cond_0

    .line 107
    iput v0, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 108
    iput v0, p0, Lcom/gc/materialdesign/views/Button;->y:F

    .line 110
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 115
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

    .line 65
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->invalidate()V

    .line 66
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-boolean v5, p0, Lcom/gc/materialdesign/views/Button;->isLastTouch:Z

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/Button;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->y:F

    .line 100
    :cond_0
    :goto_0
    return v5

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/Button;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->y:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    .line 78
    :cond_2
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/Button;->isLastTouch:Z

    .line 79
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 80
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->y:F

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 85
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->radius:F

    .line 86
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Button;->clickAfterRipple:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 90
    :cond_4
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/Button;->isLastTouch:Z

    .line 91
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 92
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->y:F

    goto/16 :goto_0

    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 95
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/Button;->isLastTouch:Z

    .line 96
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->x:F

    .line 97
    iput v2, p0, Lcom/gc/materialdesign/views/Button;->y:F

    goto/16 :goto_0
.end method

.method protected abstract setAttributes(Landroid/util/AttributeSet;)V
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 162
    iput p1, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    .line 163
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->beforeBackground:I

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 167
    sget v1, Lcom/gc/materialdesign/R$id;->shape_bacground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 169
    iget v1, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->makePressColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/Button;->rippleColor:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setDefaultProperties()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->minHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Button;->setMinimumHeight(I)V

    .line 49
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->minWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Button;->setMinimumWidth(I)V

    .line 51
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->background:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Button;->setBackgroundResource(I)V

    .line 52
    iget v0, p0, Lcom/gc/materialdesign/views/Button;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Button;->setBackgroundColor(I)V

    .line 53
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/gc/materialdesign/views/Button;->onClickListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setRippleSpeed(F)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/gc/materialdesign/views/Button;->rippleSpeed:F

    .line 178
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/gc/materialdesign/views/Button;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-void
.end method
