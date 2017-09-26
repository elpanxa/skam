.class public Lcom/adsdk/sdk/mraid/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$AdAlertGestureListener$ZigZagState:[I = null

.field private static final MAXIMUM_THRESHOLD_X_IN_DIPS:F = 100.0f

.field private static final MAXIMUM_THRESHOLD_Y_IN_DIPS:F = 50.0f

.field private static final MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG:I = 0x4


# instance fields
.field private mCurrentThresholdInDips:F

.field private mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field private mHasCrossedLeftThreshold:Z

.field private mHasCrossedRightThreshold:Z

.field private mNumberOfZigZags:I

.field private mPivotPositionX:F

.field private mPreviousPositionX:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$AdAlertGestureListener$ZigZagState()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->$SWITCH_TABLE$com$adsdk$sdk$mraid$AdAlertGestureListener$ZigZagState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->values()[Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->$SWITCH_TABLE$com$adsdk$sdk$mraid$AdAlertGestureListener$ZigZagState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 55
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 44
    iput v2, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentThresholdInDips:F

    .line 52
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentThresholdInDips:F

    .line 59
    :cond_0
    return-void
.end method

.method private incrementNumberOfZigZags()V
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mNumberOfZigZags:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 131
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mNumberOfZigZags:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 134
    :cond_0
    return-void
.end method

.method private isMovingLeft(F)Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPreviousPositionX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMovingRight(F)Z
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPreviousPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOutOfBoundsOnYAxis(FF)Z
    .locals 2

    .prologue
    .line 106
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftThresholdReached(F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    iget-boolean v2, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    if-eqz v2, :cond_0

    .line 157
    :goto_0
    return v0

    .line 151
    :cond_0
    iget v2, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    iget v3, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentThresholdInDips:F

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 152
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    .line 153
    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 154
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->incrementNumberOfZigZags()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 157
    goto :goto_0
.end method

.method private rightThresholdReached(F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 137
    iget-boolean v2, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    if-eqz v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_0
    iget v2, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    iget v3, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentThresholdInDips:F

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 140
    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 141
    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method private updateInitialState(F)V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 111
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 113
    :cond_0
    return-void
.end method

.method private updateZag(F)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->leftThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->isMovingRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 125
    iput p1, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    .line 127
    :cond_0
    return-void
.end method

.method private updateZig(F)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->rightThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->isMovingLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 118
    iput p1, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method finishGestureDetection()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->reset()V

    .line 98
    return-void
.end method

.method getCurrentZigZagState()Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    return-object v0
.end method

.method getMinimumDipsInZigZag()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentThresholdInDips:F

    return v0
.end method

.method getNumberOfZigzags()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mNumberOfZigZags:I

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->isTouchOutOfBoundsOnYAxis(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->$SWITCH_TABLE$com$adsdk$sdk$mraid$AdAlertGestureListener$ZigZagState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPreviousPositionX:F

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mPivotPositionX:F

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->updateInitialState(F)V

    goto :goto_1

    .line 80
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->updateZig(F)V

    goto :goto_1

    .line 83
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->updateZag(F)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 102
    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener;->mCurrentZigZagState:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    .line 103
    return-void
.end method
