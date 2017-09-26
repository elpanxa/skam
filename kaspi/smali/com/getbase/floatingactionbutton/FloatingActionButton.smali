.class public Lcom/getbase/floatingactionbutton/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionButton$FAB_SIZE;
    }
.end annotation


# static fields
.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mCircleSize:F

.field mColorDisabled:I

.field mColorNormal:I

.field mColorPressed:I

.field private mDrawableSize:I

.field private mIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mSize:I

.field mStrokeVisible:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method private adjustColorBrightness(IF)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 355
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 356
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 358
    aget v1, v0, v3

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 360
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method private createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 289
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opaque(I)I

    move-result v0

    .line 291
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 293
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 294
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {p0, v0, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v1

    .line 302
    const/16 v0, 0xff

    if-eq v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    float-to-int v2, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 309
    return-object v0

    .line 302
    :cond_1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;

    invoke-direct {v0, v2, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton$TranslucentLayerDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 281
    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v2, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 282
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 283
    new-array v1, v3, [I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 284
    return-object v0
.end method

.method private createInnerStrokesDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 407
    :goto_0
    return-object v0

    .line 385
    :cond_0
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v7, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->darkenColor(I)I

    move-result v6

    .line 388
    invoke-direct {p0, v6}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->halfTransparent(I)I

    move-result v5

    .line 389
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->lightenColor(I)I

    move-result v2

    .line 390
    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->halfTransparent(I)I

    move-result v3

    .line 392
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;IIIII)V

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    move-object v0, v7

    .line 407
    goto :goto_0
.end method

.method private createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 332
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 333
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 335
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 336
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    const v2, 0x3ca3d70a    # 0.02f

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    return-object v0
.end method

.method private darkenColor(I)I
    .locals 1

    .prologue
    .line 347
    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result v0

    return v0
.end method

.method private halfTransparent(I)I
    .locals 4

    .prologue
    .line 364
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private lightenColor(I)I
    .locals 1

    .prologue
    .line 351
    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->adjustColorBrightness(IF)I

    move-result v0

    return v0
.end method

.method private opacityToAlpha(F)I
    .locals 1

    .prologue
    .line 343
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private opaque(I)I
    .locals 3

    .prologue
    .line 373
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateCircleSize()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v0, :cond_0

    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    .line 99
    return-void

    .line 98
    :cond_0
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_mini:I

    goto :goto_0
.end method

.method private updateDrawableSize()V
    .locals 3

    .prologue
    .line 94
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    .line 95
    return-void
.end method


# virtual methods
.method getColor(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method getDimension(I)F
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method getLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 217
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorNormal:I

    const v2, 0x1060013

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 77
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorPressed:I

    const v2, 0x1060012

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 78
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    const/high16 v2, 0x1060000

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    .line 79
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_size:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 80
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_icon:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 81
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 82
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton_fab_stroke_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 86
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    .line 87
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    .line 88
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 90
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 91
    return-void
.end method

.method public isStrokeVisible()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 227
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 228
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    if-eq v0, p1, :cond_0

    .line 184
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorDisabled:I

    .line 185
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 187
    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorDisabled(I)V

    .line 180
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_0

    .line 148
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 149
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 151
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorNormal(I)V

    .line 144
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 167
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 169
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorPressed(I)V

    .line 162
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 120
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 125
    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 130
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 133
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use @FAB_SIZE constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-eq v0, p1, :cond_1

    .line 107
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 108
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 109
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 110
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 112
    :cond_1
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mStrokeVisible:Z

    .line 192
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 194
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 428
    return-void
.end method

.method updateBackground()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    .line 231
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_stroke_width:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v3

    .line 232
    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, v3, v0

    .line 234
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v2, :cond_0

    sget v2, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_normal:I

    :goto_0
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createFillDrawable(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-direct {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v13

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    sget v3, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v12, v2, 0x2

    .line 244
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    float-to-int v2, v2

    .line 245
    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 246
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    add-float/2addr v4, v5

    float-to-int v5, v4

    move v4, v2

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 254
    int-to-float v1, v2

    sub-float/2addr v1, v6

    float-to-int v8, v1

    int-to-float v1, v3

    sub-float/2addr v1, v6

    float-to-int v9, v1

    int-to-float v1, v2

    sub-float/2addr v1, v6

    float-to-int v10, v1

    int-to-float v1, v5

    sub-float/2addr v1, v6

    float-to-int v11, v1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 260
    add-int v6, v2, v12

    add-int/2addr v3, v12

    add-int v4, v2, v12

    add-int/2addr v5, v12

    move v1, v13

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 266
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void

    .line 234
    :cond_0
    sget v2, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_mini:I

    goto :goto_0
.end method
