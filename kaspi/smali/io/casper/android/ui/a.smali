.class public Lio/casper/android/ui/a;
.super Landroid/widget/EditText;
.source "CaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/a$a;
    }
.end annotation


# static fields
.field private static final MAX_CLICK_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CaptionView"

.field public static TYPE_LARGE:I

.field public static TYPE_LARGE_LEFT:I

.field public static TYPE_NONE:I

.field public static TYPE_STANDARD:I

.field public static TYPE_STANDARD_LEFT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTextColour:I

.field private mCurrentbackgroundColour:I

.field private mDragEnabled:Z

.field private mFontManager:Lio/casper/android/l/g;

.field private mKeyboardCloseListener:Lio/casper/android/ui/a$a;

.field private mLargeBackgroundColour:I

.field private mLargeTextColour:I

.field private mLargeTextSize:F

.field private mPrevX:I

.field private mPrevY:I

.field private mRotation:I

.field private mScaledDensity:F

.field private mStandardBackgroundColour:I

.field private mStandardTextColour:I

.field private mStandardTextSize:F

.field private mStartClickTime:J

.field private mType:I

.field private mViewContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    sput v0, Lio/casper/android/ui/a;->TYPE_NONE:I

    .line 252
    const/4 v0, 0x1

    sput v0, Lio/casper/android/ui/a;->TYPE_STANDARD:I

    .line 253
    const/4 v0, 0x2

    sput v0, Lio/casper/android/ui/a;->TYPE_STANDARD_LEFT:I

    .line 254
    const/4 v0, 0x3

    sput v0, Lio/casper/android/ui/a;->TYPE_LARGE_LEFT:I

    .line 255
    const/4 v0, 0x4

    sput v0, Lio/casper/android/ui/a;->TYPE_LARGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 42
    iput v2, p0, Lio/casper/android/ui/a;->mRotation:I

    .line 48
    iput-object p1, p0, Lio/casper/android/ui/a;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lio/casper/android/l/g;

    iget-object v1, p0, Lio/casper/android/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/ui/a;->mFontManager:Lio/casper/android/l/g;

    .line 51
    iput-object p2, p0, Lio/casper/android/ui/a;->mViewContainer:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lio/casper/android/ui/a;->mScaledDensity:F

    .line 55
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a;->mScaledDensity:F

    div-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a;->mStandardTextSize:F

    .line 56
    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Lio/casper/android/ui/a;->mScaledDensity:F

    div-float/2addr v0, v1

    iput v0, p0, Lio/casper/android/ui/a;->mLargeTextSize:F

    .line 58
    iput v3, p0, Lio/casper/android/ui/a;->mStandardTextColour:I

    .line 59
    const/high16 v0, -0x1000000

    iput v0, p0, Lio/casper/android/ui/a;->mStandardBackgroundColour:I

    .line 61
    iput v3, p0, Lio/casper/android/ui/a;->mLargeTextColour:I

    .line 62
    iput v2, p0, Lio/casper/android/ui/a;->mLargeBackgroundColour:I

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/ui/a;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setLongClickable(Z)V

    .line 66
    invoke-virtual {p0, p0}, Lio/casper/android/ui/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p1}, Lio/casper/android/util/l;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 70
    invoke-virtual {p0, v0, v0, v0, v0}, Lio/casper/android/ui/a;->setPadding(IIII)V

    .line 71
    sget v0, Lio/casper/android/ui/a;->TYPE_NONE:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setType(I)V

    .line 73
    new-instance v0, Lio/casper/android/ui/a$1;

    invoke-direct {v0, p0}, Lio/casper/android/ui/a$1;-><init>(Lio/casper/android/ui/a;)V

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/a;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lio/casper/android/ui/a;->mRotation:I

    return v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lio/casper/android/ui/a;->mFontManager:Lio/casper/android/l/g;

    invoke-virtual {v0}, Lio/casper/android/l/g;->a()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lio/casper/android/ui/a;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 245
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lio/casper/android/ui/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setX(F)V

    .line 129
    iget-object v0, p0, Lio/casper/android/ui/a;->mViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setY(F)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 397
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 398
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getHeight()I

    move-result v2

    .line 401
    iput p1, p0, Lio/casper/android/ui/a;->mRotation:I

    .line 403
    iget v3, p0, Lio/casper/android/ui/a;->mRotation:I

    if-nez v3, :cond_1

    .line 405
    invoke-virtual {p0, v4}, Lio/casper/android/ui/a;->setX(F)V

    .line 406
    invoke-virtual {p0, v4}, Lio/casper/android/ui/a;->setY(F)V

    .line 408
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 410
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 447
    :cond_0
    :goto_0
    iget v0, p0, Lio/casper/android/ui/a;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setRotation(F)V

    .line 448
    invoke-virtual {p0}, Lio/casper/android/ui/a;->requestLayout()V

    .line 449
    invoke-virtual {p0}, Lio/casper/android/ui/a;->a()V

    .line 451
    return-void

    .line 412
    :cond_1
    iget v3, p0, Lio/casper/android/ui/a;->mRotation:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 414
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lio/casper/android/ui/a;->setX(F)V

    .line 415
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lio/casper/android/ui/a;->setY(F)V

    .line 417
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 419
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 436
    :cond_2
    iget v3, p0, Lio/casper/android/ui/a;->mRotation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_0

    .line 438
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lio/casper/android/ui/a;->setX(F)V

    .line 439
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lio/casper/android/ui/a;->setY(F)V

    .line 441
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 443
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lio/casper/android/ui/a;->mRotation:I

    sparse-switch v0, :sswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 377
    :sswitch_0
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->a(I)V

    goto :goto_0

    .line 381
    :sswitch_1
    const/16 v0, 0x10e

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->a(I)V

    goto :goto_0

    .line 385
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->a(I)V

    goto :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lio/casper/android/ui/a;->mRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/casper/android/ui/a;->mRotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setCursorVisible(Z)V

    .line 109
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 356
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lio/casper/android/ui/a;->mKeyboardCloseListener:Lio/casper/android/ui/a$a;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lio/casper/android/ui/a;->mKeyboardCloseListener:Lio/casper/android/ui/a$a;

    invoke-interface {v1}, Lio/casper/android/ui/a$a;->a()V

    goto :goto_0

    .line 370
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lio/casper/android/ui/a;->mCurrentbackgroundColour:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lio/casper/android/ui/a;->mCurrentTextColour:I

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget v1, p0, Lio/casper/android/ui/a;->mScaledDensity:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0}, Lio/casper/android/ui/a;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/casper/android/ui/a;->mStartClickTime:J

    .line 277
    invoke-virtual {p0}, Lio/casper/android/ui/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/casper/android/ui/a;->mPrevX:I

    .line 280
    iget-boolean v1, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/casper/android/ui/a;->mPrevY:I

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/casper/android/ui/a;->mPrevY:I

    .line 287
    iget-boolean v1, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lio/casper/android/ui/a;->mPrevX:I

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lio/casper/android/util/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 301
    invoke-virtual {p0}, Lio/casper/android/ui/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lio/casper/android/ui/a;->mPrevX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setX(F)V

    .line 304
    iget-boolean v0, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lio/casper/android/ui/a;->mPrevY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setY(F)V

    .line 307
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lio/casper/android/ui/a;->mPrevX:I

    .line 308
    iget-boolean v0, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v0, :cond_4

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lio/casper/android/ui/a;->mPrevY:I

    :cond_4
    :goto_1
    move v0, v1

    .line 325
    goto/16 :goto_0

    .line 314
    :cond_5
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lio/casper/android/ui/a;->mPrevY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setY(F)V

    .line 315
    iget-boolean v0, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v0, :cond_6

    .line 316
    invoke-virtual {p0}, Lio/casper/android/ui/a;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lio/casper/android/ui/a;->mPrevX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setX(F)V

    .line 318
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lio/casper/android/ui/a;->mPrevY:I

    .line 319
    iget-boolean v0, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lio/casper/android/ui/a;->mPrevX:I

    goto :goto_1

    .line 331
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/casper/android/ui/a;->mStartClickTime:J

    sub-long/2addr v2, v4

    .line 332
    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 334
    const-string v2, "CaptionView"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "CaptionView received Click"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0, v1}, Lio/casper/android/ui/a;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 340
    :cond_7
    const-string v2, "CaptionView"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "CaptionView was Dragged"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lio/casper/android/ui/a;->clearFocus()V

    move v0, v1

    .line 343
    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 141
    const v0, 0x3f19999a    # 0.6f

    invoke-static {p1, v0}, Lio/casper/android/util/l;->a(IF)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 142
    iput p1, p0, Lio/casper/android/ui/a;->mCurrentbackgroundColour:I

    .line 143
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lio/casper/android/ui/a;->mDragEnabled:Z

    .line 117
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0, p1}, Lio/casper/android/ui/a;->setFocusable(Z)V

    .line 122
    invoke-virtual {p0, p1}, Lio/casper/android/ui/a;->setFocusableInTouchMode(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lio/casper/android/ui/a;->setClickable(Z)V

    .line 124
    return-void
.end method

.method public setKeyboardCloseListener(Lio/casper/android/ui/a$a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lio/casper/android/ui/a;->mKeyboardCloseListener:Lio/casper/android/ui/a$a;

    .line 113
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 136
    iput p1, p0, Lio/casper/android/ui/a;->mCurrentTextColour:I

    .line 137
    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 102
    invoke-virtual {p0}, Lio/casper/android/ui/a;->clearFocus()V

    .line 103
    return-void
.end method

.method public setType(I)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    iput p1, p0, Lio/casper/android/ui/a;->mType:I

    .line 157
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    sget v1, Lio/casper/android/ui/a;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    .line 158
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 160
    iget v0, p0, Lio/casper/android/ui/a;->mStandardTextColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextColor(I)V

    .line 161
    iget v0, p0, Lio/casper/android/ui/a;->mStandardBackgroundColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 162
    invoke-direct {p0, v2}, Lio/casper/android/ui/a;->a(Z)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    sget v1, Lio/casper/android/ui/a;->TYPE_STANDARD:I

    if-ne v0, v1, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setVisibility(I)V

    .line 168
    iget v0, p0, Lio/casper/android/ui/a;->mStandardTextSize:F

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextSize(F)V

    .line 169
    iget v0, p0, Lio/casper/android/ui/a;->mStandardTextColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextColor(I)V

    .line 170
    iget v0, p0, Lio/casper/android/ui/a;->mStandardBackgroundColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 172
    invoke-direct {p0, v2}, Lio/casper/android/ui/a;->a(Z)V

    .line 174
    invoke-virtual {p0}, Lio/casper/android/ui/a;->a()V

    .line 176
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setDragEnabled(Z)V

    .line 177
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 179
    invoke-virtual {p0, v6}, Lio/casper/android/ui/a;->setGravity(I)V

    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 186
    :cond_2
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    sget v1, Lio/casper/android/ui/a;->TYPE_STANDARD_LEFT:I

    if-ne v0, v1, :cond_3

    .line 188
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setVisibility(I)V

    .line 189
    iget v0, p0, Lio/casper/android/ui/a;->mStandardTextSize:F

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextSize(F)V

    .line 190
    iget v0, p0, Lio/casper/android/ui/a;->mStandardTextColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextColor(I)V

    .line 191
    iget v0, p0, Lio/casper/android/ui/a;->mStandardBackgroundColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 193
    invoke-direct {p0, v2}, Lio/casper/android/ui/a;->a(Z)V

    .line 195
    invoke-virtual {p0}, Lio/casper/android/ui/a;->a()V

    .line 197
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setDragEnabled(Z)V

    .line 198
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 200
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setGravity(I)V

    .line 202
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 207
    :cond_3
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    sget v1, Lio/casper/android/ui/a;->TYPE_LARGE_LEFT:I

    if-ne v0, v1, :cond_4

    .line 209
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setVisibility(I)V

    .line 210
    iget v0, p0, Lio/casper/android/ui/a;->mLargeTextSize:F

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextSize(F)V

    .line 211
    iget v0, p0, Lio/casper/android/ui/a;->mLargeTextColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextColor(I)V

    .line 212
    iget v0, p0, Lio/casper/android/ui/a;->mLargeBackgroundColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 213
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setDragEnabled(Z)V

    .line 214
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 216
    invoke-direct {p0, v3}, Lio/casper/android/ui/a;->a(Z)V

    .line 218
    invoke-virtual {p0}, Lio/casper/android/ui/a;->a()V

    .line 220
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setGravity(I)V

    goto/16 :goto_0

    .line 224
    :cond_4
    iget v0, p0, Lio/casper/android/ui/a;->mType:I

    sget v1, Lio/casper/android/ui/a;->TYPE_LARGE:I

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, v2}, Lio/casper/android/ui/a;->setVisibility(I)V

    .line 227
    iget v0, p0, Lio/casper/android/ui/a;->mLargeTextSize:F

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextSize(F)V

    .line 228
    iget v0, p0, Lio/casper/android/ui/a;->mLargeTextColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setTextColor(I)V

    .line 229
    iget v0, p0, Lio/casper/android/ui/a;->mLargeBackgroundColour:I

    invoke-virtual {p0, v0}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 230
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setDragEnabled(Z)V

    .line 231
    invoke-virtual {p0, v3}, Lio/casper/android/ui/a;->setEnabled(Z)V

    .line 233
    invoke-direct {p0, v3}, Lio/casper/android/ui/a;->a(Z)V

    .line 235
    invoke-virtual {p0}, Lio/casper/android/ui/a;->a()V

    .line 237
    invoke-virtual {p0, v6}, Lio/casper/android/ui/a;->setGravity(I)V

    goto/16 :goto_0
.end method
