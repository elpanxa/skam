.class Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "StickyHeadersItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;


# direct methods
.method public constructor <init>(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->clear()V

    .line 121
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->onItemRangeChanged(II)V

    .line 141
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->onItemRangeInserted(II)V

    .line 131
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->onItemRangeMoved(III)V

    .line 136
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->onItemRangeRemoved(II)V

    .line 126
    return-void
.end method
