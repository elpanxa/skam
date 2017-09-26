.class public abstract Lio/casper/android/ui/a/a/c;
.super Ljava/lang/Object;
.source "MultiTouchEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final GRAB_AREA_SIZE:I = 0x28

.field private static final UI_MODE_ANISOTROPIC_SCALE:I = 0x2

.field private static final UI_MODE_ROTATE:I = 0x1


# instance fields
.field protected mAngle:F

.field protected mCenterX:F

.field protected mCenterY:F

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mFirstLoad:Z

.field protected mGrabAreaX1:F

.field protected mGrabAreaX2:F

.field protected mGrabAreaY1:F

.field protected mGrabAreaY2:F

.field protected mHeight:I

.field protected mIsGrabAreaSelected:Z

.field protected mIsLatestSelected:Z

.field protected mMaxX:F

.field protected mMaxY:F

.field protected mMinX:F

.field protected mMinY:F

.field protected transient mPaint:Landroid/graphics/Paint;

.field protected mScaleX:F

.field protected mScaleY:F

.field protected mStartMidX:F

.field protected mStartMidY:F

.field protected mUIMode:I

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v2, p0, Lio/casper/android/ui/a/a/c;->mFirstLoad:Z

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a/c;->mPaint:Landroid/graphics/Paint;

    .line 46
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/c;->mIsGrabAreaSelected:Z

    .line 47
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/c;->mIsLatestSelected:Z

    .line 59
    iput v2, p0, Lio/casper/android/ui/a/a/c;->mUIMode:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v2, p0, Lio/casper/android/ui/a/a/c;->mFirstLoad:Z

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a/c;->mPaint:Landroid/graphics/Paint;

    .line 46
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/c;->mIsGrabAreaSelected:Z

    .line 47
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/c;->mIsLatestSelected:Z

    .line 59
    iput v2, p0, Lio/casper/android/ui/a/a/c;->mUIMode:I

    .line 65
    invoke-virtual {p0, p1}, Lio/casper/android/ui/a/a/c;->a(Landroid/content/res/Resources;)V

    .line 66
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Context;FF)V
.end method

.method protected a(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 69
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    :goto_0
    iput v0, p0, Lio/casper/android/ui/a/a/c;->mDisplayWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    :goto_1
    iput v0, p0, Lio/casper/android/ui/a/a/c;->mDisplayHeight:I

    .line 78
    return-void

    .line 72
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public a(FF)Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMinX:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMinY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxY:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(FFFFF)Z
    .locals 4

    .prologue
    const/high16 v3, 0x42200000    # 40.0f

    .line 111
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    .line 112
    iget v1, p0, Lio/casper/android/ui/a/a/c;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p4

    .line 114
    sub-float v2, p1, v0

    iput v2, p0, Lio/casper/android/ui/a/a/c;->mMinX:F

    .line 115
    sub-float v2, p2, v1

    iput v2, p0, Lio/casper/android/ui/a/a/c;->mMinY:F

    .line 116
    add-float/2addr v0, p1

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mMaxX:F

    .line 117
    add-float v0, p2, v1

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mMaxY:F

    .line 119
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mGrabAreaX1:F

    .line 120
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxY:F

    sub-float/2addr v0, v3

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mGrabAreaY1:F

    .line 121
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxX:F

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mGrabAreaX2:F

    .line 122
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mMaxY:F

    iput v0, p0, Lio/casper/android/ui/a/a/c;->mGrabAreaY2:F

    .line 124
    iput p1, p0, Lio/casper/android/ui/a/a/c;->mCenterX:F

    .line 125
    iput p2, p0, Lio/casper/android/ui/a/a/c;->mCenterY:F

    .line 126
    iput p3, p0, Lio/casper/android/ui/a/a/c;->mScaleX:F

    .line 127
    iput p4, p0, Lio/casper/android/ui/a/a/c;->mScaleY:F

    .line 128
    iput p5, p0, Lio/casper/android/ui/a/a/c;->mAngle:F

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lio/casper/android/ui/a/a/b$c;)Z
    .locals 6

    .prologue
    .line 87
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mUIMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->d()F

    move-result v3

    .line 93
    :goto_0
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mUIMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->e()F

    move-result v4

    .line 99
    :goto_1
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->a()F

    move-result v1

    .line 100
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->b()F

    move-result v2

    .line 103
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->f()F

    move-result v5

    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lio/casper/android/ui/a/a/c;->a(FFFFF)Z

    move-result v0

    return v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->c()F

    move-result v3

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Lio/casper/android/ui/a/a/b$c;->c()F

    move-result v4

    goto :goto_1
.end method

.method public b()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mCenterX:F

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mCenterY:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mScaleX:F

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mScaleY:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lio/casper/android/ui/a/a/c;->mAngle:F

    return v0
.end method
