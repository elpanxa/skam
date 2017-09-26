.class public Lio/casper/android/ui/d;
.super Landroid/view/View;
.source "DrawingView.java"


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDrawingEnabled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field private paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation
.end field

.field private undonePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/d;->mDrawingEnabled:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 31
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 34
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/casper/android/ui/d;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 92
    iget-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iput p1, p0, Lio/casper/android/ui/d;->mX:F

    .line 94
    iput p2, p0, Lio/casper/android/ui/d;->mY:F

    .line 95
    return-void
.end method

.method private b(FF)V
    .locals 6

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 98
    iget v0, p0, Lio/casper/android/ui/d;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 99
    iget v1, p0, Lio/casper/android/ui/d;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 100
    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lio/casper/android/ui/d;->mX:F

    iget v2, p0, Lio/casper/android/ui/d;->mY:F

    iget v3, p0, Lio/casper/android/ui/d;->mX:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lio/casper/android/ui/d;->mY:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 102
    iput p1, p0, Lio/casper/android/ui/d;->mX:F

    .line 103
    iput p2, p0, Lio/casper/android/ui/d;->mY:F

    .line 105
    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lio/casper/android/ui/d;->mX:F

    iget v2, p0, Lio/casper/android/ui/d;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lio/casper/android/ui/d;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    .line 113
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    .line 150
    invoke-virtual {p0}, Lio/casper/android/ui/d;->requestLayout()V

    .line 151
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    .line 159
    invoke-virtual {p0}, Lio/casper/android/ui/d;->requestLayout()V

    .line 160
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/casper/android/ui/d;->undonePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    .line 167
    invoke-virtual {p0}, Lio/casper/android/ui/d;->requestLayout()V

    .line 168
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getColour()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/ui/d;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 81
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Path;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/d;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 68
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/d;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/casper/android/ui/d;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lio/casper/android/ui/d;->mCanvas:Landroid/graphics/Canvas;

    .line 76
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lio/casper/android/ui/d;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/d;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lio/casper/android/ui/d;->mDrawingEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 136
    :goto_0
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0

    .line 124
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lio/casper/android/ui/d;->a(FF)V

    .line 125
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lio/casper/android/ui/d;->b(FF)V

    .line 129
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lio/casper/android/ui/d;->d()V

    .line 133
    invoke-virtual {p0}, Lio/casper/android/ui/d;->invalidate()V

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method

.method public setColour(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lio/casper/android/ui/d;->mDrawingEnabled:Z

    .line 191
    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lio/casper/android/ui/d;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void
.end method
