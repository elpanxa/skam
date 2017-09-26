.class public Lio/casper/android/ui/a/a/b;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/a/a/b$a;,
        Lio/casper/android/ui/a/a/b$c;,
        Lio/casper/android/ui/a/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field public static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0x14

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field public static final MODE_DRAG:I = 0x1

.field public static final MODE_NOTHING:I = 0x0

.field public static final MODE_PINCH:I = 0x2

.field public static final MODE_ST_GRAB:I = 0x3

.field private static final THRESHOLD:F = 3.0f

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPointerId:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIds:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lio/casper/android/ui/a/a/b$b;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lio/casper/android/ui/a/a/b$c;

.field private mDragOccurred:Z

.field private mMode:I

.field private mPrevPt:Lio/casper/android/ui/a/a/b$b;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field objectCanvas:Lio/casper/android/ui/a/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/ui/a/a/b$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    const/4 v2, 0x6

    sput v2, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_UP:I

    .line 241
    const/16 v2, 0x8

    sput v2, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_INDEX_SHIFT:I

    .line 247
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 248
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getPointerId:Ljava/lang/reflect/Method;

    .line 249
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getPressure:Ljava/lang/reflect/Method;

    .line 250
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 252
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 254
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 255
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 256
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getX:Ljava/lang/reflect/Method;

    .line 257
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/casper/android/ui/a/a/b;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    sput-boolean v0, Lio/casper/android/ui/a/a/b;->multiTouchSupported:Z

    .line 263
    sget-boolean v0, Lio/casper/android/ui/a/a/b;->multiTouchSupported:Z

    if-eqz v0, :cond_0

    .line 267
    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_UP:I

    .line 269
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :cond_0
    :goto_1
    new-array v0, v7, [F

    sput-object v0, Lio/casper/android/ui/a/a/b;->xVals:[F

    .line 279
    new-array v0, v7, [F

    sput-object v0, Lio/casper/android/ui/a/a/b;->yVals:[F

    .line 280
    new-array v0, v7, [F

    sput-object v0, Lio/casper/android/ui/a/a/b;->pressureVals:[F

    .line 281
    new-array v0, v7, [I

    sput-object v0, Lio/casper/android/ui/a/a/b;->pointerIds:[I

    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Lio/casper/android/ui/a/a/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/ui/a/a/b$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/a/a/b;-><init>(Lio/casper/android/ui/a/a/b$a;Z)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lio/casper/android/ui/a/a/b$a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/ui/a/a/b$a",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    .line 156
    new-instance v0, Lio/casper/android/ui/a/a/b$c;

    invoke-direct {v0}, Lio/casper/android/ui/a/a/b$c;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 172
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    .line 189
    iput v1, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 201
    new-instance v0, Lio/casper/android/ui/a/a/b$b;

    invoke-direct {v0}, Lio/casper/android/ui/a/a/b$b;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    .line 202
    new-instance v0, Lio/casper/android/ui/a/a/b$b;

    invoke-direct {v0}, Lio/casper/android/ui/a/a/b$b;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    .line 203
    iput-boolean p2, p0, Lio/casper/android/ui/a/a/b;->handleSingleTouchEvents:Z

    .line 204
    iput-object p1, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    .line 205
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPtX:F

    .line 134
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPtY:F

    .line 135
    const v2, 0x41aa6666    # 21.3f

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 136
    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->a(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 135
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPtDiam:F

    .line 137
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 138
    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->b(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 137
    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPtWidth:F

    .line 139
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 140
    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->b(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 139
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPtHeight:F

    .line 141
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->c(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtAng:F

    .line 142
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->e()F

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->b()F

    move-result v0

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->c()F

    move-result v0

    goto :goto_2

    .line 141
    :cond_3
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->f()F

    move-result v1

    goto :goto_3
.end method

.method private a(I[F[F[F[IIZJ)V
    .locals 10

    .prologue
    .line 372
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    .line 373
    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    iput-object v1, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    .line 374
    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    .line 376
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lio/casper/android/ui/a/a/b$b;->a(Lio/casper/android/ui/a/a/b$b;I[F[F[F[IIZJ)V

    .line 377
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->d()V

    .line 378
    return-void
.end method

.method private a(FFF)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    .line 482
    cmpg-float v2, p1, v3

    if-gez v2, :cond_0

    cmpg-float v2, p2, v3

    if-gez v2, :cond_0

    .line 483
    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v2}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v2

    cmpl-float v2, p3, v2

    if-nez v2, :cond_0

    .line 484
    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    .line 489
    :goto_0
    return v0

    .line 488
    :cond_0
    iput-boolean v1, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    move v0, v1

    .line 489
    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 387
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-interface {v0, v2, v3}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$c;)V

    .line 398
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->a(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 399
    :goto_1
    div-float v0, v1, v0

    .line 400
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->a()V

    .line 401
    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtX:F

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v2}, Lio/casper/android/ui/a/a/b$c;->e(Lio/casper/android/ui/a/a/b$c;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lio/casper/android/ui/a/a/b;->startPosX:F

    .line 402
    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtY:F

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v2}, Lio/casper/android/ui/a/a/b$c;->f(Lio/casper/android/ui/a/a/b$c;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->startPosY:F

    .line 403
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtDiam:F

    div-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->startScaleOverPinchDiam:F

    .line 404
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->g(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->startScaleXOverPinchWidth:F

    .line 405
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->h(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->startScaleYOverPinchHeight:F

    .line 406
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->i(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtAng:F

    sub-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->startAngleMinusPinchAngle:F

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 399
    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    goto :goto_1
.end method

.method private c()V
    .locals 8

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v7, 0x3d23d70a    # 0.04f

    const/4 v6, 0x0

    .line 413
    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v1}, Lio/casper/android/ui/a/a/b$c;->a(Lio/casper/android/ui/a/a/b$c;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 419
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->a()V

    .line 420
    iget v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPtX:F

    iget v2, p0, Lio/casper/android/ui/a/a/b;->startPosX:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 421
    iget v2, p0, Lio/casper/android/ui/a/a/b;->mCurrPtY:F

    iget v3, p0, Lio/casper/android/ui/a/a/b;->startPosY:F

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 433
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v0

    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v3}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v3

    sub-float/2addr v0, v3

    .line 434
    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v3}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v3

    iget-object v4, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v4}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v4

    sub-float v4, v3, v4

    .line 437
    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v3}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    .line 438
    iget v3, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    .line 439
    cmpg-float v3, v0, v6

    if-ltz v3, :cond_3

    cmpg-float v3, v4, v6

    if-gez v3, :cond_7

    .line 440
    :cond_3
    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v3}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v3

    sub-float/2addr v3, v7

    .line 444
    :goto_2
    const v5, 0x3eb33333    # 0.35f

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_0

    .line 449
    :goto_3
    iget-boolean v5, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    if-nez v5, :cond_4

    .line 450
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v0, v4, v3}, Lio/casper/android/ui/a/a/b;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :cond_4
    iget v0, p0, Lio/casper/android/ui/a/a/b;->startScaleXOverPinchWidth:F

    iget v4, p0, Lio/casper/android/ui/a/a/b;->mCurrPtWidth:F

    mul-float/2addr v4, v0

    .line 461
    iget v0, p0, Lio/casper/android/ui/a/a/b;->startScaleYOverPinchHeight:F

    iget v5, p0, Lio/casper/android/ui/a/a/b;->mCurrPtHeight:F

    mul-float/2addr v5, v0

    .line 462
    iget v0, p0, Lio/casper/android/ui/a/a/b;->startAngleMinusPinchAngle:F

    iget v6, p0, Lio/casper/android/ui/a/a/b;->mCurrPtAng:F

    add-float/2addr v6, v0

    .line 466
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-virtual/range {v0 .. v6}, Lio/casper/android/ui/a/a/b$c;->a(FFFFFF)V

    .line 468
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v1, v2, v3}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$c;Lio/casper/android/ui/a/a/b$b;)Z

    move-result v0

    .line 470
    if-nez v0, :cond_5

    .line 472
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    goto/16 :goto_0

    .line 417
    :cond_6
    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    .line 418
    invoke-static {v1}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v0

    goto/16 :goto_1

    .line 442
    :cond_7
    iget-object v3, p0, Lio/casper/android/ui/a/a/b;->mCurrXform:Lio/casper/android/ui/a/a/b$c;

    invoke-static {v3}, Lio/casper/android/ui/a/a/b$c;->d(Lio/casper/android/ui/a/a/b$c;)F

    move-result v3

    add-float/2addr v3, v7

    goto :goto_2

    .line 446
    :cond_8
    iget v3, p0, Lio/casper/android/ui/a/a/b;->startScaleOverPinchDiam:F

    iget v5, p0, Lio/casper/android/ui/a/a/b;->mCurrPtDiam:F

    mul-float/2addr v3, v5

    goto :goto_3
.end method

.method private d()V
    .locals 8

    .prologue
    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 504
    iget v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 509
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v1}, Lio/casper/android/ui/a/a/b$a;->b(Lio/casper/android/ui/a/a/b$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/casper/android/ui/a/a/b$a;->a(Lio/casper/android/ui/a/a/b$b;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const/4 v0, 0x3

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 516
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v1, v2}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V

    .line 517
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    .line 518
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    goto :goto_0

    .line 521
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 522
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v1, v2}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V

    .line 523
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    .line 526
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    goto :goto_0

    .line 536
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    iput v2, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 539
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iput-object v3, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v3, v1}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V

    .line 540
    iput-boolean v2, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    goto :goto_0

    .line 543
    :cond_2
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->c()V

    goto :goto_0

    .line 551
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 553
    iput v2, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 554
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iput-object v3, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v3, v1}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V

    .line 555
    iput-boolean v2, p0, Lio/casper/android/ui/a/a/b;->mDragOccurred:Z

    goto/16 :goto_0

    .line 556
    :cond_3
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    const/4 v0, 0x2

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 561
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    .line 564
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    .line 565
    iget-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    goto/16 :goto_0

    .line 570
    :cond_4
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iget-wide v2, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 575
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    goto/16 :goto_0

    .line 578
    :cond_5
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->c()V

    goto/16 :goto_0

    .line 587
    :pswitch_3
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->i()Z

    move-result v0

    if-nez v0, :cond_8

    .line 590
    :cond_6
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 592
    iput v2, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 593
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->objectCanvas:Lio/casper/android/ui/a/a/b$a;

    iput-object v3, p0, Lio/casper/android/ui/a/a/b;->selectedObject:Ljava/lang/Object;

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-interface {v0, v3, v1}, Lio/casper/android/ui/a/a/b$a;->a(Ljava/lang/Object;Lio/casper/android/ui/a/a/b$b;)V

    goto/16 :goto_0

    .line 597
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    .line 599
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    .line 602
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    .line 603
    iget-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    goto/16 :goto_0

    .line 608
    :cond_8
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v0

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v1}, Lio/casper/android/ui/a/a/b$b;->g()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_9

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    .line 610
    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v0

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v1}, Lio/casper/android/ui/a/a/b$b;->h()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_9

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    .line 612
    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->b()F

    move-result v0

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    .line 613
    invoke-virtual {v1}, Lio/casper/android/ui/a/a/b$b;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 612
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v6

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    .line 615
    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->c()F

    move-result v0

    iget-object v1, p0, Lio/casper/android/ui/a/a/b;->mPrevPt:Lio/casper/android/ui/a/a/b$b;

    .line 616
    invoke-virtual {v1}, Lio/casper/android/ui/a/a/b$b;->c()F

    move-result v1

    sub-float/2addr v0, v1

    .line 615
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v6

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 620
    :cond_9
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    .line 621
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a/b$b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    .line 622
    iget-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleStartTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    goto/16 :goto_0

    .line 624
    :cond_a
    iget-object v0, p0, Lio/casper/android/ui/a/a/b;->mCurrPt:Lio/casper/android/ui/a/a/b$b;

    invoke-static {v0}, Lio/casper/android/ui/a/a/b$b;->b(Lio/casper/android/ui/a/a/b$b;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/casper/android/ui/a/a/b;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 626
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->b()V

    goto/16 :goto_0

    .line 629
    :cond_b
    invoke-direct {p0}, Lio/casper/android/ui/a/a/b;->c()V

    goto/16 :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 286
    :try_start_0
    sget-boolean v0, Lio/casper/android/ui/a/a/b;->multiTouchSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 292
    :goto_0
    iget v0, p0, Lio/casper/android/ui/a/a/b;->mMode:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b;->handleSingleTouchEvents:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 294
    const/4 v0, 0x0

    .line 360
    :goto_1
    return v0

    .line 287
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v12, v0, v1

    .line 301
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-gt v11, v12, :cond_10

    .line 304
    if-ge v11, v12, :cond_4

    const/4 v0, 0x1

    move v8, v0

    .line 305
    :goto_3
    sget-boolean v0, Lio/casper/android/ui/a/a/b;->multiTouchSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    .line 313
    :cond_2
    sget-object v2, Lio/casper/android/ui/a/a/b;->xVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    .line 314
    :goto_4
    aput v0, v2, v3

    .line 315
    sget-object v2, Lio/casper/android/ui/a/a/b;->yVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    .line 316
    :goto_5
    aput v0, v2, v3

    .line 317
    sget-object v2, Lio/casper/android/ui/a/a/b;->pressureVals:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_7

    .line 318
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_6
    aput v0, v2, v3

    .line 346
    :cond_3
    sget-object v2, Lio/casper/android/ui/a/a/b;->xVals:[F

    sget-object v3, Lio/casper/android/ui/a/a/b;->yVals:[F

    sget-object v4, Lio/casper/android/ui/a/a/b;->pressureVals:[F

    sget-object v5, Lio/casper/android/ui/a/a/b;->pointerIds:[I

    if-eqz v8, :cond_c

    const/4 v6, 0x2

    :goto_7
    if-eqz v8, :cond_d

    const/4 v7, 0x1

    :goto_8
    if-eqz v8, :cond_f

    .line 352
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    :goto_9
    move-object v0, p0

    .line 346
    invoke-direct/range {v0 .. v9}, Lio/casper/android/ui/a/a/b;->a(I[F[F[F[IIZJ)V

    .line 301
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 304
    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 314
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_4

    .line 316
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_5

    .line 318
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_6

    .line 323
    :cond_8
    const/16 v0, 0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 326
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_3

    .line 327
    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getPointerId:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    sget-object v4, Lio/casper/android/ui/a/a/b;->pointerIds:[I

    aput v0, v4, v2

    .line 334
    sget-object v4, Lio/casper/android/ui/a/a/b;->xVals:[F

    if-eqz v8, :cond_9

    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    :goto_b
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 337
    sget-object v4, Lio/casper/android/ui/a/a/b;->yVals:[F

    if-eqz v8, :cond_a

    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    :goto_c
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 340
    sget-object v4, Lio/casper/android/ui/a/a/b;->pressureVals:[F

    if-eqz v8, :cond_b

    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 341
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    :goto_d
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 326
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a

    .line 335
    :cond_9
    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getX:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    .line 338
    :cond_a
    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getY:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 341
    :cond_b
    sget-object v0, Lio/casper/android/ui/a/a/b;->m_getPressure:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_c
    move v6, v10

    .line 346
    goto/16 :goto_7

    :cond_d
    const/4 v0, 0x1

    if-eq v10, v0, :cond_e

    const/4 v0, 0x1

    sget v7, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v10

    sget v7, Lio/casper/android/ui/a/a/b;->ACTION_POINTER_UP:I

    if-eq v0, v7, :cond_e

    const/4 v0, 0x3

    if-eq v10, v0, :cond_e

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 353
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto/16 :goto_9

    .line 356
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 359
    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
