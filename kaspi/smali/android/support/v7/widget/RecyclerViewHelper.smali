.class public Landroid/support/v7/widget/RecyclerViewHelper;
.super Ljava/lang/Object;
.source "RecyclerViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPreLayoutPositionToPostLayout(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    return v0
.end method
