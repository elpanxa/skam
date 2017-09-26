.class public Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalLinearLayoutManagerScrollProgressCalculator;
.super Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalScrollProgressCalculator;
.source "VerticalLinearLayoutManagerScrollProgressCalculator.java"


# direct methods
.method public constructor <init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalScrollProgressCalculator;-><init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V

    .line 17
    return-void
.end method


# virtual methods
.method public calculateScrollProgress(Landroid/support/v7/widget/RecyclerView;)F
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 33
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    .line 35
    div-int v1, v2, v1

    .line 37
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 38
    sub-int v1, v2, v1

    .line 39
    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 41
    sub-int/2addr v0, v2

    .line 43
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
