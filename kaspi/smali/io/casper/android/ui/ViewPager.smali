.class public Lio/casper/android/ui/ViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPager.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lio/casper/android/ui/ViewPager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lio/casper/android/ui/ViewPager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lio/casper/android/ui/ViewPager;->mEnabled:Z

    .line 37
    return-void
.end method
