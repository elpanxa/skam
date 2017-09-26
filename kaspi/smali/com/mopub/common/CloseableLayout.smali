.class public Lcom/mopub/common/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "CloseableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/CloseableLayout$1;,
        Lcom/mopub/common/CloseableLayout$UnsetPressedState;,
        Lcom/mopub/common/CloseableLayout$ClosePosition;,
        Lcom/mopub/common/CloseableLayout$OnCloseListener;
    }
.end annotation


# static fields
.field static final CLOSE_BUTTON_PADDING_DP:F = 8.0f
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field static final CLOSE_BUTTON_SIZE_DP:F = 30.0f
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field static final CLOSE_REGION_SIZE_DP:F = 50.0f


# instance fields
.field private final mClosableLayoutRect:Landroid/graphics/Rect;

.field private mCloseBoundChanged:Z

.field private final mCloseButtonBounds:Landroid/graphics/Rect;

.field private final mCloseButtonPadding:I

.field private final mCloseButtonSize:I

.field private final mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCloseRegionBounds:Landroid/graphics/Rect;

.field private final mCloseRegionSize:I

.field private final mInsetCloseRegionBounds:Landroid/graphics/Rect;

.field private mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTouchSlop:I

.field private mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 103
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 105
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v2, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v2, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 111
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mopub/common/CloseableLayout;->mTouchSlop:I

    .line 115
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionSize:I

    .line 116
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonSize:I

    .line 117
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonPadding:I

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/common/CloseableLayout;->setWillNotDraw(Z)V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/common/CloseableLayout;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    return-void
.end method

.method private applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/mopub/common/CloseableLayout$ClosePosition;->getGravity()I

    move-result v0

    invoke-static {v0, p2, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 184
    return-void
.end method

.method private applyCloseButtonBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mopub/common/CloseableLayout;->applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 180
    return-void
.end method

.method private performClose()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/common/CloseableLayout;->playSoundEffect(I)V

    .line 261
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    invoke-interface {v0}, Lcom/mopub/common/CloseableLayout$OnCloseListener;->onClose()V

    .line 264
    :cond_0
    return-void
.end method

.method private setClosePressed(Z)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->isClosePressed()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 243
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 242
    :cond_1
    sget-object v0, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method


# virtual methods
.method public applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mopub/common/CloseableLayout;->applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 176
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 151
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    if-eqz v0, :cond_0

    .line 152
    iput-boolean v3, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 154
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 159
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonPadding:I

    iget v2, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 163
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseButtonBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 164
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    :cond_1
    return-void
.end method

.method getCloseBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method isClosePressed()Z
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloseVisible()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 200
    invoke-virtual {p0, v1, v2, v0}, Lcom/mopub/common/CloseableLayout;->pointInCloseBounds(III)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 208
    iget v4, p0, Lcom/mopub/common/CloseableLayout;->mTouchSlop:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/mopub/common/CloseableLayout;->pointInCloseBounds(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    .line 210
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 234
    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    goto :goto_1

    .line 220
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    goto :goto_1

    .line 223
    :pswitch_3
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->isClosePressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mopub/common/CloseableLayout$UnsetPressedState;-><init>(Lcom/mopub/common/CloseableLayout;Lcom/mopub/common/CloseableLayout$1;)V

    iput-object v0, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mopub/common/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    invoke-direct {p0}, Lcom/mopub/common/CloseableLayout;->performClose()V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method pointInCloseBounds(III)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p3

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCloseBoundChanged(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 289
    return-void
.end method

.method setCloseBounds(Landroid/graphics/Rect;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    return-void
.end method

.method public setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V
    .locals 1
    .param p1    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 131
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->invalidate()V

    .line 132
    return-void
.end method

.method public setCloseVisible(Z)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V
    .locals 0
    .param p1    # Lcom/mopub/common/CloseableLayout$OnCloseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    .line 124
    return-void
.end method
