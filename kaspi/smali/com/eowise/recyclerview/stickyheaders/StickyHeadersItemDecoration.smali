.class public Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "StickyHeadersItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;
    }
.end annotation


# instance fields
.field private final adapterDataObserver:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;

.field private drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

.field private final headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

.field private overlay:Z


# direct methods
.method public constructor <init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;-><init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;Z)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    invoke-direct {p0, p1, p2, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;-><init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;ZLcom/eowise/recyclerview/stickyheaders/DrawOrder;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/eowise/recyclerview/stickyheaders/HeaderStore;ZLcom/eowise/recyclerview/stickyheaders/DrawOrder;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 28
    iput-boolean p2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->overlay:Z

    .line 29
    iput-object p3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    .line 30
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    .line 31
    new-instance v0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;

    invoke-direct {v0, p0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;-><init>(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->adapterDataObserver:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    return-object v0
.end method

.method private drawHeaders(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 50
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 51
    const/4 v1, 0x0

    .line 53
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 54
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 56
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 62
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v6}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v6, v5}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    :cond_1
    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v6, v5}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderViewByItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 68
    iget-object v7, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v7, v5}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderHeight(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 69
    invoke-direct {p0, v4, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->getHeaderY(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;)F

    move-result v4

    add-float/2addr v0, v4

    .line 71
    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v4}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    int-to-float v7, v5

    add-float/2addr v7, v0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 72
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v5

    sub-float/2addr v0, v1

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-virtual {v6, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 53
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 85
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private getHeaderY(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;)F
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 91
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v0, v1}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 95
    :goto_0
    iget-boolean v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->overlay:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 96
    :cond_0
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    :goto_1
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v0, v1}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    invoke-virtual {v0, v1}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderHeight(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    sget-object v1, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->UnderItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    if-ne v0, v1, :cond_0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->drawHeaders(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->drawOrder:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    sget-object v1, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->drawHeaders(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 46
    :cond_0
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration;->adapterDataObserver:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersItemDecoration$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 106
    return-void
.end method
