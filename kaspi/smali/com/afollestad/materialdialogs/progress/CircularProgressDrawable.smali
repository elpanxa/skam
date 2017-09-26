.class public Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MIN_SWEEP_ANGLE:I = 0x1e

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x258

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

.field private mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSweepProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$1;-><init>(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    .line 159
    new-instance v0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$2;-><init>(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    .line 43
    iput p2, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mBorderWidth:F

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->setupAnimations()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->toggleAppearingMode()V

    return-void
.end method

.method private setupAnimations()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 173
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 177
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 179
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x43960000    # 300.0f

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    .line 180
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 183
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 184
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$3;-><init>(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    return-void
.end method

.method private toggleAppearingMode()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mModeAppearing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mModeAppearing:Z

    .line 138
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mModeAppearing:Z

    if-eqz v0, :cond_0

    .line 139
    iget v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 56
    iget v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    sub-float v2, v0, v1

    .line 57
    iget v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentSweepAngle:F

    .line 58
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mModeAppearing:Z

    if-nez v1, :cond_0

    .line 59
    add-float/2addr v2, v0

    .line 60
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    sub-float v3, v0, v3

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    return-void

    .line 62
    :cond_0
    add-float/2addr v3, v0

    goto :goto_0
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngle:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentSweepAngle:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 111
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 112
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 113
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 114
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 115
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 116
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 75
    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentGlobalAngle:F

    .line 120
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->invalidateSelf()V

    .line 121
    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mCurrentSweepAngle:F

    .line 129
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->invalidateSelf()V

    .line 130
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mRunning:Z

    .line 88
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 89
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 90
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mRunning:Z

    .line 99
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 100
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 101
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method
