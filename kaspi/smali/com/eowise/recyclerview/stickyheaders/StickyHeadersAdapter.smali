.class public interface abstract Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;
.super Ljava/lang/Object;
.source "StickyHeadersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HeaderViewHolder:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getHeaderId(I)J
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THeaderViewHolder;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")THeaderViewHolder;"
        }
    .end annotation
.end method
