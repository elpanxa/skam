.class public Lio/casper/android/ui/VerticalViewPager$c;
.super Landroid/view/ViewGroup$LayoutParams;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field childIndex:I

.field public gravity:I

.field heightFactor:F

.field public isDecor:Z

.field needsMeasure:Z

.field position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2766
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2747
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/ui/VerticalViewPager$c;->heightFactor:F

    .line 2767
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 2770
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2747
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/ui/VerticalViewPager$c;->heightFactor:F

    .line 2772
    invoke-static {}, Lio/casper/android/ui/VerticalViewPager;->f()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2773
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lio/casper/android/ui/VerticalViewPager$c;->gravity:I

    .line 2774
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2775
    return-void
.end method
