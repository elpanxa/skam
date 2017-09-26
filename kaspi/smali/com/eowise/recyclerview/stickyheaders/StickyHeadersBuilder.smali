.class public Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
.super Ljava/lang/Object;
.source "StickyHeadersBuilder.java"


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

.field private headerClickListener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

.field private headersAdapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

.field private isSticky:Z

.field private overlay:Z

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->isSticky:Z

    .line 21
    sget-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    .line 22
    return-void
.end method


# virtual methods
.method public build()Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->headersAdapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    iget-boolean v3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->isSticky:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;Z)V

    .line 69
    new-instance v1, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;

    iget-boolean v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->overlay:Z

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    invoke-direct {v1, v0, v2, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;-><init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;ZLcom/eowise/recyclerview/stickyheaders/DrawOrder;)V

    .line 71
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->headerClickListener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v2, v3, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/eowise/recyclerview/stickyheaders/HeaderStore;)V

    .line 76
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->headerClickListener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    invoke-virtual {v2, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->setListener(Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 81
    :cond_0
    return-object v1
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must have stable ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 44
    return-object p0
.end method

.method public setDrawOrder(Lcom/eowise/recyclerview/stickyheaders/DrawOrder;)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    .line 62
    return-object p0
.end method

.method public setOnHeaderClickListener(Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->headerClickListener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    .line 50
    return-object p0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 26
    return-object p0
.end method

.method public setSticky(Z)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->isSticky:Z

    .line 56
    return-object p0
.end method

.method public setStickyHeadersAdapter(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->setStickyHeadersAdapter(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;Z)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setStickyHeadersAdapter(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;Z)Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->headersAdapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    .line 35
    iput-boolean p2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersBuilder;->overlay:Z

    .line 36
    return-object p0
.end method
