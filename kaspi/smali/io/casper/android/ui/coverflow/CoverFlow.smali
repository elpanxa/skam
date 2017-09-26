.class public Lio/casper/android/ui/coverflow/CoverFlow;
.super Landroid/widget/Gallery;
.source "CoverFlow.java"


# static fields
.field public static final ACTION_DISTANCE_AUTO:I = 0x7fffffff

.field public static final SCALEDOWN_GRAVITY_BOTTOM:F = 1.0f

.field public static final SCALEDOWN_GRAVITY_CENTER:F = 0.5f

.field public static final SCALEDOWN_GRAVITY_TOP:F


# instance fields
.field private actionDistance:I

.field private maxRotation:I

.field private reflectionEnabled:Z

.field private reflectionGap:I

.field private reflectionRatio:F

.field private scaleDownGravity:F

.field private transformationCamera:Landroid/graphics/Camera;

.field private unselectedAlpha:F

.field private unselectedSaturation:F

.field private unselectedScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 49
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionRatio:F

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionGap:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionEnabled:Z

    .line 68
    const/16 v0, 0x4b

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    .line 78
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    .line 96
    invoke-direct {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->a()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionRatio:F

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionGap:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionEnabled:Z

    .line 68
    const/16 v0, 0x4b

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    .line 78
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    .line 101
    invoke-direct {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->a()V

    .line 102
    invoke-direct {p0, p2}, Lio/casper/android/ui/coverflow/CoverFlow;->a(Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionRatio:F

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionGap:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionEnabled:Z

    .line 68
    const/16 v0, 0x4b

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    .line 78
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    .line 107
    invoke-direct {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->a()V

    .line 108
    invoke-direct {p0, p2}, Lio/casper/android/ui/coverflow/CoverFlow;->a(Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->transformationCamera:Landroid/graphics/Camera;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/coverflow/CoverFlow;->setSpacing(I)V

    .line 114
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/casper/android/b$a;->CoverFlow:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    const/4 v1, 0x5

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->actionDistance:I

    .line 120
    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    .line 121
    const/4 v1, 0x3

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    .line 122
    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedAlpha:F

    .line 123
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedSaturation:F

    .line 124
    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedScale:F

    .line 125
    return-void
.end method


# virtual methods
.method public getActionDistance()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->actionDistance:I

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 304
    check-cast p1, Lio/casper/android/ui/coverflow/b;

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 308
    invoke-virtual {p1}, Lio/casper/android/ui/coverflow/b;->invalidate()V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getWidth()I

    move-result v0

    .line 312
    div-int/lit8 v1, v0, 0x2

    .line 313
    invoke-virtual {p1}, Lio/casper/android/ui/coverflow/b;->getWidth()I

    move-result v2

    .line 314
    invoke-virtual {p1}, Lio/casper/android/ui/coverflow/b;->getHeight()I

    move-result v3

    .line 315
    invoke-virtual {p1}, Lio/casper/android/ui/coverflow/b;->getLeft()I

    move-result v4

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    .line 318
    iget v5, p0, Lio/casper/android/ui/coverflow/CoverFlow;->actionDistance:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_5

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    .line 321
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    int-to-float v0, v0

    div-float v0, v7, v0

    sub-int v1, v4, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 324
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 325
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 328
    iget v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedAlpha:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_1

    .line 329
    iget v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedAlpha:F

    sub-float/2addr v1, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v7

    .line 330
    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 334
    :cond_1
    iget v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedSaturation:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_2

    .line 336
    iget v1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedSaturation:F

    sub-float/2addr v1, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v7

    .line 337
    invoke-virtual {p1, v1}, Lio/casper/android/ui/coverflow/b;->a(F)V

    .line 340
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 343
    iget v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    if-eqz v4, :cond_3

    .line 344
    neg-float v4, v0

    iget v5, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 345
    iget-object v5, p0, Lio/casper/android/ui/coverflow/CoverFlow;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 346
    iget-object v5, p0, Lio/casper/android/ui/coverflow/CoverFlow;->transformationCamera:Landroid/graphics/Camera;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 347
    iget-object v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 348
    iget-object v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->transformationCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 352
    :cond_3
    iget v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_4

    .line 353
    iget v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedScale:F

    sub-float/2addr v4, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v7

    .line 355
    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 356
    int-to-float v3, v3

    iget v4, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    mul-float/2addr v3, v4

    .line 357
    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 358
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 359
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 362
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 318
    :cond_5
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->actionDistance:I

    goto/16 :goto_0
.end method

.method public getMaxRotation()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    return v0
.end method

.method public getReflectionGap()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionGap:I

    return v0
.end method

.method public getReflectionRatio()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionRatio:F

    return v0
.end method

.method public getScaleDownGravity()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    return v0
.end method

.method public getUnselectedAlpha()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedAlpha:F

    return v0
.end method

.method public getUnselectedSaturation()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedSaturation:F

    return v0
.end method

.method public getUnselectedScale()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedScale:F

    return v0
.end method

.method public setActionDistance(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->actionDistance:I

    .line 266
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lio/casper/android/ui/coverflow/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .prologue
    .line 180
    instance-of v0, p1, Lio/casper/android/ui/coverflow/a;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/casper/android/ui/coverflow/CoverFlow;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only works in conjunction with a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/casper/android/ui/coverflow/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    return-void
.end method

.method public setMaxRotation(I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->maxRotation:I

    .line 203
    return-void
.end method

.method public setReflectionEnabled(Z)V
    .locals 1

    .prologue
    .line 164
    iput-boolean p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionEnabled:Z

    .line 166
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/coverflow/a;

    invoke-virtual {v0}, Lio/casper/android/ui/coverflow/a;->notifyDataSetChanged()V

    .line 169
    :cond_0
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 1

    .prologue
    .line 152
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionGap:I

    .line 154
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/coverflow/a;

    invoke-virtual {v0}, Lio/casper/android/ui/coverflow/a;->notifyDataSetChanged()V

    .line 157
    :cond_0
    return-void
.end method

.method public setReflectionRatio(F)V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reflectionRatio may only be in the interval (0, 0.5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->reflectionRatio:F

    .line 142
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lio/casper/android/ui/coverflow/CoverFlow;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/coverflow/a;

    invoke-virtual {v0}, Lio/casper/android/ui/coverflow/a;->notifyDataSetChanged()V

    .line 145
    :cond_2
    return-void
.end method

.method public setScaleDownGravity(F)V
    .locals 0

    .prologue
    .line 247
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->scaleDownGravity:F

    .line 248
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 276
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedAlpha:F

    .line 277
    return-void
.end method

.method public setUnselectedSaturation(F)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedSaturation:F

    .line 295
    return-void
.end method

.method public setUnselectedScale(F)V
    .locals 0

    .prologue
    .line 229
    iput p1, p0, Lio/casper/android/ui/coverflow/CoverFlow;->unselectedScale:F

    .line 230
    return-void
.end method
