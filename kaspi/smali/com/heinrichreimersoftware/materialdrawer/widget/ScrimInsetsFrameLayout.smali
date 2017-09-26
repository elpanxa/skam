.class public Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;
    }
.end annotation


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mOnInsetsCallback:Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7, v7, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v7, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 95
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 109
    :cond_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 69
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 70
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;

    invoke-interface {v0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 74
    :cond_0
    return v1

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsetForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public setOnInsetsCallback(Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout;->mOnInsetsCallback:Lcom/heinrichreimersoftware/materialdrawer/widget/ScrimInsetsFrameLayout$OnInsetsCallback;

    .line 135
    return-void
.end method
