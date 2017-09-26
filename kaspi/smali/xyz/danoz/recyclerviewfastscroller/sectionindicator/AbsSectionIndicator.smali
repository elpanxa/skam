.class public abstract Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;
.super Landroid/widget/FrameLayout;
.source "AbsSectionIndicator.java"

# interfaces
.implements Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final STYLEABLE:[I


# instance fields
.field private mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

.field private mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsSectionIndicator:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->STYLEABLE:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsSectionIndicator_rfs_section_indicator_layout:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getDefaultLayoutId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance v0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    invoke-direct {v0, p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    .line 46
    return-void

    .line 42
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public animateAlpha(F)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mDefaultSectionIndicatorAlphaAnimator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;

    invoke-virtual {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/animation/DefaultSectionIndicatorAlphaAnimator;->animateTo(F)V

    .line 84
    return-void
.end method

.method protected abstract applyCustomBackgroundColorAttribute(I)V
.end method

.method protected abstract getDefaultBackgroundColor()I
.end method

.method protected abstract getDefaultLayoutId()I
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 69
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    if-nez v0, :cond_0

    .line 70
    new-instance v1, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;-><init>(FF)V

    .line 72
    new-instance v0, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    invoke-direct {v0, v1}, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;-><init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    .line 74
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->mScreenPositionCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;

    invoke-virtual {v0, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->getYPositionFromScrollProgress(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/AbsSectionIndicator;->setY(F)V

    .line 79
    return-void
.end method

.method public abstract setSection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
