.class public Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
.super Lcom/getbase/floatingactionbutton/FloatingActionButton;
.source "AddFloatingActionButton.java"


# instance fields
.field mPlusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 64
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v5

    .line 65
    div-float v3, v5, v2

    .line 67
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_size:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v0

    .line 68
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_stroke:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getDimension(I)F

    move-result v1

    div-float v4, v1, v2

    .line 69
    sub-float v0, v5, v0

    div-float v2, v0, v2

    .line 71
    new-instance v0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$1;-><init>(Lcom/getbase/floatingactionbutton/AddFloatingActionButton;FFFF)V

    .line 79
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 82
    iget v2, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    return-object v1
.end method

.method public getPlusColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    return v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton_fab_plusIconColor:I

    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-super {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlusColor(I)V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->mPlusColor:I

    .line 53
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    .line 55
    :cond_0
    return-void
.end method

.method public setPlusColorResId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setPlusColor(I)V

    .line 48
    return-void
.end method
