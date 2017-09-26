.class public Lcom/avocarrot/androidsdk/CarouselDots;
.super Landroid/widget/LinearLayout;
.source "CarouselDots.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/CarouselDots;->setOrientation(I)V

    .line 22
    return-void
.end method


# virtual methods
.method getIndicator()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 59
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 62
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 63
    new-array v1, v5, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 65
    return-object v2
.end method

.method init(I)V
    .locals 6

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 26
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avocarrot/androidsdk/Utils;->convertToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 27
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avocarrot/androidsdk/Utils;->convertToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 29
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 30
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :goto_1
    invoke-virtual {p0, v3}, Lcom/avocarrot/androidsdk/CarouselDots;->addView(Landroid/view/View;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method setPosition(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/CarouselDots;->getChildCount()I

    move-result v3

    move v2, v1

    .line 43
    :goto_0
    if-ge v2, v3, :cond_1

    .line 44
    invoke-virtual {p0, v2}, Lcom/avocarrot/androidsdk/CarouselDots;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 44
    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method
