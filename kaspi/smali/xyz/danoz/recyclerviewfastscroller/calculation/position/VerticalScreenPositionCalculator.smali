.class public Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;
.super Ljava/lang/Object;
.source "VerticalScreenPositionCalculator.java"


# instance fields
.field private final mVerticalScrollBoundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;


# direct methods
.method public constructor <init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->mVerticalScrollBoundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    .line 14
    return-void
.end method


# virtual methods
.method public getYPositionFromScrollProgress(F)F
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->mVerticalScrollBoundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;->getMinimumScrollY()F

    move-result v0

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->mVerticalScrollBoundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    invoke-virtual {v1}, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;->getMaximumScrollY()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/calculation/position/VerticalScreenPositionCalculator;->mVerticalScrollBoundsProvider:Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;

    invoke-virtual {v2}, Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;->getMaximumScrollY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
