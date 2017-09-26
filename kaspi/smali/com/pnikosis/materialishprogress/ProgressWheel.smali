.class public Lcom/pnikosis/materialishprogress/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/ProgressWheel$1;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x1c

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 37
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 38
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 40
    const/16 v0, 0x10

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    .line 41
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    .line 43
    iput-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 46
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 47
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 50
    iput-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 51
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    .line 54
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 55
    const v0, 0xffffff

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 66
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 69
    iput-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 73
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 74
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 75
    iput-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x1c

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 37
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 38
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 40
    const/16 v0, 0x10

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    .line 41
    const/16 v0, 0x10e

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    .line 43
    iput-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 46
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 47
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 50
    iput-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 51
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    .line 54
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 55
    const v0, 0xffffff

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 66
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 69
    iput-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 73
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 74
    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 75
    iput-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 88
    sget-object v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 90
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 5

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 217
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 218
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 219
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 221
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_circleRadius:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 223
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_fillRadius:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 225
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 227
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 229
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_spinSpeed:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 230
    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 232
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    double-to-int v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    .line 234
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barColor:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 236
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimColor:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 238
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 240
    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->spin()V

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void
.end method

.method private runCallback()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 416
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 417
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 418
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 420
    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 413
    :cond_0
    return-void
.end method

.method private setupBounds(II)V
    .locals 7

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 183
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 184
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v3

    .line 186
    iget-boolean v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    if-nez v4, :cond_0

    .line 188
    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 191
    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 194
    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 195
    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 197
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    return-void
.end method

.method private updateBarLength(J)V
    .locals 5

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 346
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 348
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 351
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 355
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    .line 358
    :cond_0
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 359
    const/high16 v1, 0x437e0000    # 254.0f

    .line 361
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    if-eqz v2, :cond_2

    .line 362
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    .line 371
    :goto_1
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 365
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 366
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    goto :goto_1

    .line 369
    :cond_3
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    goto :goto_1
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 265
    const/4 v0, 0x0

    .line 267
    iget-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v1, :cond_3

    .line 269
    const/4 v6, 0x1

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v0, v2

    .line 272
    long-to-float v2, v0

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->updateBarLength(J)V

    .line 276
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 277
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 278
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 283
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback(F)V

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 287
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 288
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    add-float v3, v0, v1

    .line 290
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/4 v2, 0x0

    .line 292
    const/high16 v3, 0x43070000    # 135.0f

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 330
    :goto_0
    if-eqz v6, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 333
    :cond_2
    return-void

    .line 298
    :cond_3
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 300
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 302
    const/4 v0, 0x1

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 305
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float/2addr v2, v3

    .line 307
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    :cond_4
    move v6, v0

    .line 311
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_5

    .line 312
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 315
    :cond_5
    const/4 v1, 0x0

    .line 316
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 317
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    if-nez v2, :cond_7

    .line 318
    const/high16 v0, 0x40000000    # 2.0f

    .line 319
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-double v8, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    .line 320
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    move v2, v1

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    const/high16 v3, 0x43b40000    # 360.0f

    .line 327
    :goto_2
    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    move v3, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    .line 110
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 121
    if-ne v4, v6, :cond_2

    .line 133
    :goto_0
    if-eq v5, v6, :cond_0

    if-ne v4, v6, :cond_4

    :cond_0
    move v0, v1

    .line 144
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setMeasuredDimension(II)V

    .line 145
    return-void

    .line 124
    :cond_2
    if-ne v4, v7, :cond_3

    .line 126
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 129
    goto :goto_0

    .line 136
    :cond_4
    if-ne v5, v7, :cond_1

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 511
    instance-of v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 512
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 532
    :goto_0
    return-void

    .line 516
    :cond_0
    check-cast p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    .line 517
    invoke-virtual {p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 520
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 521
    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 522
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 523
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 524
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 525
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 526
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 527
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 528
    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 529
    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 491
    new-instance v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 494
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    .line 495
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 496
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 497
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 498
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    .line 499
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    .line 500
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 501
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    .line 502
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 503
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 504
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    .line 506
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupBounds(II)V

    .line 157
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 158
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 159
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 339
    if-nez p2, :cond_0

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 342
    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 386
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 387
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 388
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 609
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    .line 610
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 611
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 614
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 590
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    .line 591
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 594
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    .line 251
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 254
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 571
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    .line 572
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 575
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 465
    iget-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v1, :cond_0

    .line 466
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 470
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 471
    sub-float/2addr p1, v2

    .line 476
    :cond_1
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 484
    :goto_1
    return-void

    .line 472
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 473
    goto :goto_0

    .line 480
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 481
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 483
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    .line 553
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 556
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 429
    iget-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v1, :cond_0

    .line 430
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 433
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    .line 436
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 437
    sub-float/2addr p1, v2

    .line 442
    :cond_1
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 456
    :goto_1
    return-void

    .line 438
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 439
    goto :goto_0

    .line 449
    :cond_3
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 453
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 455
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 629
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    .line 630
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    .line 631
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 634
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 669
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    .line 670
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 673
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 653
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    .line 654
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 406
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 407
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    .line 395
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    .line 396
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    .line 397
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 398
    return-void
.end method
