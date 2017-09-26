.class public Lcom/gc/materialdesign/views/Switch;
.super Lcom/gc/materialdesign/views/CustomView;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gc/materialdesign/views/Switch$OnCheckListener;,
        Lcom/gc/materialdesign/views/Switch$Ball;
    }
.end annotation


# instance fields
.field backgroundColor:I

.field ball:Lcom/gc/materialdesign/views/Switch$Ball;

.field check:Z

.field eventCheck:Z

.field onCheckListener:Lcom/gc/materialdesign/views/Switch$OnCheckListener;

.field placedBall:Z

.field press:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "#4CAF50"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    .line 28
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    .line 29
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->eventCheck:Z

    .line 30
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->press:Z

    .line 175
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->placedBall:Z

    .line 36
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/Switch;->setAttributes(Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/gc/materialdesign/views/Switch$1;

    invoke-direct {v0, p0}, Lcom/gc/materialdesign/views/Switch$1;-><init>(Lcom/gc/materialdesign/views/Switch;)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private placeBall()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 179
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    iput v1, v0, Lcom/gc/materialdesign/views/Switch$Ball;->xIni:F

    .line 180
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/gc/materialdesign/views/Switch$Ball;->xFin:F

    .line 181
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/gc/materialdesign/views/Switch$Ball;->xCen:F

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->placedBall:Z

    .line 183
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Switch$Ball;->animateCheck()V

    .line 184
    return-void
.end method


# virtual methods
.method public isCheck()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    return v0
.end method

.method protected makePressColor()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 165
    iget v1, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 166
    iget v2, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v2, 0xff

    .line 167
    iget v2, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v4, v2, 0xff

    .line 168
    add-int/lit8 v2, v1, -0x1e

    if-gez v2, :cond_0

    move v2, v0

    .line 169
    :goto_0
    add-int/lit8 v1, v3, -0x1e

    if-gez v1, :cond_1

    move v1, v0

    .line 170
    :goto_1
    add-int/lit8 v3, v4, -0x1e

    if-gez v3, :cond_2

    .line 171
    :goto_2
    const/16 v3, 0x46

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 168
    :cond_0
    add-int/lit8 v1, v1, -0x1e

    move v2, v1

    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v1, v3, -0x1e

    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v0, v4, -0x1e

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/gc/materialdesign/views/CustomView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->placedBall:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/gc/materialdesign/views/Switch;->placeBall()V

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 130
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 132
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    :goto_0
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 138
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    iget-object v2, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v2

    iget-object v3, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-static {v3}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v3

    iget-object v4, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/Switch$Ball;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v4}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->press:Z

    if-eqz v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->makePressColor()I

    move-result v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/Switch$Ball;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->invalidate()V

    .line 157
    return-void

    .line 133
    :cond_2
    const-string v1, "#B0B0B0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 150
    :cond_3
    const-string v0, "#446D6D6D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-boolean v3, p0, Lcom/gc/materialdesign/views/Switch;->isLastTouch:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iput-boolean v3, p0, Lcom/gc/materialdesign/views/Switch;->press:Z

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget v1, v1, Lcom/gc/materialdesign/views/Switch$Ball;->xIni:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget v0, v0, Lcom/gc/materialdesign/views/Switch$Ball;->xIni:F

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget v1, v1, Lcom/gc/materialdesign/views/Switch$Ball;->xFin:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget v0, v0, Lcom/gc/materialdesign/views/Switch$Ball;->xFin:F

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    iget v1, v1, Lcom/gc/materialdesign/views/Switch$Ball;->xCen:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 94
    iput-boolean v3, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 99
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Switch$Ball;->changeBackground()V

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 101
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Switch;->isLastTouch:Z

    .line 102
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Switch;->press:Z

    goto :goto_0

    .line 96
    :cond_4
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 106
    :cond_6
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Switch;->press:Z

    .line 107
    iput-boolean v2, p0, Lcom/gc/materialdesign/views/Switch;->isLastTouch:Z

    .line 108
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->eventCheck:Z

    iget-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    if-eq v0, v1, :cond_7

    .line 109
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->eventCheck:Z

    .line 110
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->onCheckListener:Lcom/gc/materialdesign/views/Switch$OnCheckListener;

    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->onCheckListener:Lcom/gc/materialdesign/views/Switch$OnCheckListener;

    iget-boolean v1, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    invoke-interface {v0, p0, v1}, Lcom/gc/materialdesign/views/Switch$OnCheckListener;->onCheck(Lcom/gc/materialdesign/views/Switch;Z)V

    .line 113
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Switch$Ball;->animateCheck()V

    goto/16 :goto_0
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, -0x1

    .line 52
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_transparent:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setBackgroundResource(I)V

    .line 55
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setMinimumHeight(I)V

    .line 56
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setMinimumWidth(I)V

    .line 60
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 62
    if-eq v0, v3, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setBackgroundColor(I)V

    .line 71
    :cond_0
    :goto_0
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "check"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    .line 73
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Switch;->eventCheck:Z

    .line 74
    new-instance v0, Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/gc/materialdesign/views/Switch$Ball;-><init>(Lcom/gc/materialdesign/views/Switch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    iget-object v1, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v1, v0}, Lcom/gc/materialdesign/views/Switch$Ball;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->addView(Landroid/view/View;)V

    .line 81
    return-void

    .line 66
    :cond_1
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 67
    if-eq v0, v3, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Switch;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 190
    iput p1, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    .line 191
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/gc/materialdesign/views/Switch;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/Switch;->beforeBackground:I

    .line 194
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Switch;->invalidate()V

    .line 198
    iput-boolean p1, p0, Lcom/gc/materialdesign/views/Switch;->check:Z

    .line 199
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch;->ball:Lcom/gc/materialdesign/views/Switch$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Switch$Ball;->animateCheck()V

    .line 200
    return-void
.end method

.method public setOncheckListener(Lcom/gc/materialdesign/views/Switch$OnCheckListener;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/gc/materialdesign/views/Switch;->onCheckListener:Lcom/gc/materialdesign/views/Switch$OnCheckListener;

    .line 244
    return-void
.end method
