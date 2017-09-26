.class public Lcom/gc/materialdesign/views/ButtonIcon;
.super Lcom/gc/materialdesign/views/ButtonFloat;
.source "ButtonIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x106000d

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/ButtonFloat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSpeed:F

    .line 24
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSize:I

    .line 25
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonIcon;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected makePressColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->backgroundColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 39
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->x:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->makePressColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->x:F

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonIcon;->y:F

    iget v3, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSize:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 45
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    .line 46
    :cond_0
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSpeed:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 47
    iput v4, p0, Lcom/gc/materialdesign/views/ButtonIcon;->x:F

    .line 48
    iput v4, p0, Lcom/gc/materialdesign/views/ButtonIcon;->y:F

    .line 49
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->rippleSize:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->radius:F

    .line 50
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->clickAfterRipple:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonIcon;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->invalidate()V

    .line 55
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/ButtonFloat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 30
    iget v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->x:F

    .line 32
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonIcon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/gc/materialdesign/views/ButtonIcon;->y:F

    .line 34
    :cond_0
    return v0
.end method
