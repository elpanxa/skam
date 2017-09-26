.class public Lat/markushi/ui/RevealColorView;
.super Landroid/view/ViewGroup;
.source "RevealColorView.java"


# static fields
.field public static final ANIMATION_HIDE:I = 0x2

.field public static final ANIMATION_REVEAL:I = 0x0

.field private static final SCALE:F = 8.0f


# instance fields
.field private animator:Landroid/view/ViewPropertyAnimator;

.field private circle:Landroid/graphics/drawable/ShapeDrawable;

.field private inkColor:I

.field private inkView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lat/markushi/ui/RevealColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lat/markushi/ui/RevealColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Lat/markushi/ui/RevealColorView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lat/markushi/ui/RevealColorView;->addView(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lat/markushi/ui/RevealColorView;->circle:Landroid/graphics/drawable/ShapeDrawable;

    .line 49
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    iget-object v1, p0, Lat/markushi/ui/RevealColorView;->circle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-static {v0, v1}, Lat/markushi/ui/util/UiHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lat/markushi/ui/RevealColorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    return-object v0
.end method

.method private calculateScale(II)F
    .locals 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 208
    invoke-virtual {p0}, Lat/markushi/ui/RevealColorView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 209
    invoke-virtual {p0}, Lat/markushi/ui/RevealColorView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 210
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 212
    int-to-float v3, p1

    sub-float/2addr v0, v3

    .line 213
    int-to-float v3, p2

    sub-float/2addr v1, v3

    .line 214
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 215
    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v4

    .line 216
    return v0
.end method

.method private prepareView(Landroid/view/View;IIF)V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 192
    sub-int v2, p2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 193
    sub-int v2, p3, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 195
    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 196
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    .line 197
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 198
    return-void
.end method


# virtual methods
.method public hide(IIIIJLandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    .line 133
    iput v1, p0, Lat/markushi/ui/RevealColorView;->inkColor:I

    .line 135
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 139
    :cond_0
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0, p3}, Lat/markushi/ui/RevealColorView;->setBackgroundColor(I)V

    .line 142
    invoke-direct {p0, p1, p2}, Lat/markushi/ui/RevealColorView;->calculateScale(II)F

    move-result v0

    mul-float/2addr v0, v2

    .line 143
    int-to-float v1, p4

    mul-float/2addr v1, v2

    iget-object v2, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 145
    iget-object v2, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-direct {p0, v2, p1, p2, v0}, Lat/markushi/ui/RevealColorView;->prepareView(Landroid/view/View;IIF)V

    .line 147
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lat/markushi/ui/RevealColorView$2;

    invoke-direct {v1, p0, p7}, Lat/markushi/ui/RevealColorView$2;-><init>(Lat/markushi/ui/RevealColorView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    .line 177
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lat/markushi/ui/RevealColorView;->prepareAnimator(Landroid/view/ViewPropertyAnimator;I)Landroid/view/ViewPropertyAnimator;

    .line 178
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    return-void
.end method

.method public hide(IIILandroid/animation/Animator$AnimatorListener;)V
    .locals 9

    .prologue
    .line 128
    invoke-virtual {p0}, Lat/markushi/ui/RevealColorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lat/markushi/ui/R$integer;->rcv_animationDurationHide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 129
    const/4 v5, 0x0

    int-to-long v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lat/markushi/ui/RevealColorView;->hide(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    .line 130
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    iget-object v1, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lat/markushi/ui/RevealColorView;->setMeasuredDimension(II)V

    .line 64
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 65
    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 66
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    iget-object v1, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 68
    return-void
.end method

.method public prepareAnimator(Landroid/view/ViewPropertyAnimator;I)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .prologue
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 185
    :cond_0
    invoke-static {}, Lat/markushi/ui/util/BakedBezierInterpolator;->getInstance()Lat/markushi/ui/util/BakedBezierInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 186
    return-object p1
.end method

.method public reveal(IIIIJLandroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 76
    iget v0, p0, Lat/markushi/ui/RevealColorView;->inkColor:I

    if-ne p3, v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 79
    :cond_0
    iput p3, p0, Lat/markushi/ui/RevealColorView;->inkColor:I

    .line 81
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 85
    :cond_1
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->circle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    int-to-float v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 89
    invoke-direct {p0, p1, p2}, Lat/markushi/ui/RevealColorView;->calculateScale(II)F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    .line 91
    iget-object v2, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-direct {p0, v2, p1, p2, v0}, Lat/markushi/ui/RevealColorView;->prepareView(Landroid/view/View;IIF)V

    .line 92
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->inkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lat/markushi/ui/RevealColorView$1;

    invoke-direct {v1, p0, p7, p3}, Lat/markushi/ui/RevealColorView$1;-><init>(Lat/markushi/ui/RevealColorView;Landroid/animation/Animator$AnimatorListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    .line 123
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0, v3}, Lat/markushi/ui/RevealColorView;->prepareAnimator(Landroid/view/ViewPropertyAnimator;I)Landroid/view/ViewPropertyAnimator;

    .line 124
    iget-object v0, p0, Lat/markushi/ui/RevealColorView;->animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public reveal(IIILandroid/animation/Animator$AnimatorListener;)V
    .locals 9

    .prologue
    .line 71
    invoke-virtual {p0}, Lat/markushi/ui/RevealColorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lat/markushi/ui/R$integer;->rcv_animationDurationReveal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 72
    const/4 v5, 0x0

    int-to-long v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lat/markushi/ui/RevealColorView;->reveal(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    .line 73
    return-void
.end method
