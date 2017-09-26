.class public Lcom/gc/materialdesign/views/ButtonFloat;
.super Lcom/gc/materialdesign/views/Button;
.source "ButtonFloat.java"


# instance fields
.field drawableIcon:Landroid/graphics/drawable/Drawable;

.field height:Ljava/lang/Integer;

.field hidePosition:F

.field icon:Landroid/widget/ImageView;

.field public isShow:Z

.field showPosition:F

.field sizeIcon:I

.field sizeRadius:I

.field width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/16 v1, 0x1c

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0x18

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeIcon:I

    .line 32
    iput v1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeRadius:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->isShow:Z

    .line 47
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_float:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setBackgroundResource(I)V

    .line 48
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setBackgroundColor(I)V

    .line 49
    iput v1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeRadius:I

    .line 50
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->setDefaultProperties()V

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 53
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->drawableIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->drawableIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeIcon:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeIcon:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->addView(Landroid/view/View;)V

    .line 62
    return-void
.end method


# virtual methods
.method public cropCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 166
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 170
    const v4, -0xbdbdbe

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 174
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    return-object v0
.end method

.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->drawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v0, "y"

    const/4 v1, 0x1

    new-array v1, v1, [F

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonFloat;->hidePosition:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 198
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 200
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 202
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/ButtonFloat;->isShow:Z

    .line 203
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->isShow:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 126
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->makeCircle()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gc/materialdesign/views/ButtonFloat;->cropCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->invalidate()V

    .line 133
    :cond_0
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 78
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 79
    if-eq v0, v2, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setBackgroundColor(I)V

    .line 90
    :cond_0
    :goto_0
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleColor"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 92
    if-eq v0, v2, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setRippleColor(I)V

    .line 103
    :goto_1
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "iconDrawable"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 104
    if-eq v0, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->drawableIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_1
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "animate"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    new-instance v1, Lcom/gc/materialdesign/views/ButtonFloat$1;

    invoke-direct {v1, p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat$1;-><init>(Lcom/gc/materialdesign/views/ButtonFloat;Z)V

    invoke-virtual {p0, v1}, Lcom/gc/materialdesign/views/ButtonFloat;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void

    .line 83
    :cond_2
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->background:I

    .line 84
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->background:I

    if-eq v0, v2, :cond_0

    .line 85
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->background:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setBackgroundColor(I)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "rippleColor"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 97
    if-eq v0, v2, :cond_4

    .line 98
    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setRippleColor(I)V

    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->makePressColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setRippleColor(I)V

    goto :goto_1
.end method

.method protected setDefaultProperties()V
    .locals 2

    .prologue
    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->rippleSpeed:F

    .line 66
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->rippleSize:I

    .line 67
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setMinimumWidth(I)V

    .line 68
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->sizeRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloat;->setMinimumHeight(I)V

    .line 69
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_float:I

    iput v0, p0, Lcom/gc/materialdesign/views/Button;->background:I

    .line 71
    return-void
.end method

.method public setDrawableIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->drawableIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/gc/materialdesign/views/ButtonFloat;->icon:Landroid/widget/ImageView;

    .line 144
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat;->rippleColor:Ljava/lang/Integer;

    .line 185
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    const-string v0, "y"

    new-array v1, v4, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/gc/materialdesign/views/ButtonFloat;->showPosition:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 190
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 191
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 192
    iput-boolean v4, p0, Lcom/gc/materialdesign/views/ButtonFloat;->isShow:Z

    .line 193
    return-void
.end method
