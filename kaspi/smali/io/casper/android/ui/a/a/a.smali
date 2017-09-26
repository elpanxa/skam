.class public Lio/casper/android/ui/a/a/a;
.super Lio/casper/android/ui/a/a/c;
.source "ImageEntity.java"


# static fields
.field private static final INITIAL_SCALE_FACTOR:D = 0.15


# instance fields
.field private transient mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lio/casper/android/ui/a/a/c;-><init>(Landroid/content/res/Resources;)V

    .line 30
    iput-object p1, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method public a(Landroid/content/Context;FF)V
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lio/casper/android/ui/a/a/a;->a(Landroid/content/res/Resources;)V

    .line 74
    iput p2, p0, Lio/casper/android/ui/a/a/a;->mStartMidX:F

    .line 75
    iput p3, p0, Lio/casper/android/ui/a/a/a;->mStartMidY:F

    .line 77
    iget-object v1, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 78
    iget v1, p0, Lio/casper/android/ui/a/a/a;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/a;->mWidth:I

    .line 82
    iget-object v0, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/a;->mHeight:I

    .line 89
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/a;->mFirstLoad:Z

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Lio/casper/android/ui/a/a/a;->mDisplayWidth:I

    iget v1, p0, Lio/casper/android/ui/a/a/a;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/casper/android/ui/a/a/a;->mWidth:I

    iget v2, p0, Lio/casper/android/ui/a/a/a;->mHeight:I

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v2

    double-to-float v4, v0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/a;->mFirstLoad:Z

    move v3, v4

    move v2, p3

    move v1, p2

    .line 106
    :goto_0
    iget v5, p0, Lio/casper/android/ui/a/a/a;->mAngle:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/casper/android/ui/a/a/a;->a(FFFFF)Z

    .line 107
    return-void

    .line 100
    :cond_1
    iget v1, p0, Lio/casper/android/ui/a/a/a;->mCenterX:F

    .line 101
    iget v2, p0, Lio/casper/android/ui/a/a/a;->mCenterY:F

    .line 102
    iget v3, p0, Lio/casper/android/ui/a/a/a;->mScaleX:F

    .line 103
    iget v4, p0, Lio/casper/android/ui/a/a/a;->mScaleY:F

    .line 104
    iget v0, p0, Lio/casper/android/ui/a/a/a;->mAngle:F

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    iget v0, p0, Lio/casper/android/ui/a/a/a;->mMaxX:F

    iget v1, p0, Lio/casper/android/ui/a/a/a;->mMinX:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 51
    iget v1, p0, Lio/casper/android/ui/a/a/a;->mMaxY:F

    iget v2, p0, Lio/casper/android/ui/a/a/a;->mMinY:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 53
    iget-object v2, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lio/casper/android/ui/a/a/a;->mMinX:F

    float-to-int v3, v3

    iget v4, p0, Lio/casper/android/ui/a/a/a;->mMinY:F

    float-to-int v4, v4

    iget v5, p0, Lio/casper/android/ui/a/a/a;->mMaxX:F

    float-to-int v5, v5

    iget v6, p0, Lio/casper/android/ui/a/a/a;->mMaxY:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget v2, p0, Lio/casper/android/ui/a/a/a;->mAngle:F

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 57
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    iget-object v0, p0, Lio/casper/android/ui/a/a/a;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method
