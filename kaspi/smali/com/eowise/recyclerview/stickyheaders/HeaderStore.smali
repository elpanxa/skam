.class public Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
.super Ljava/lang/Object;
.source "HeaderStore.java"


# instance fields
.field private final adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

.field private final headersHeightsByItemsIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final headersViewByHeadersIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final isHeaderByItemPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isSticky:Z

.field private final parent:Landroid/support/v7/widget/RecyclerView;

.field private final wasHeaderByItemId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;Z)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    .line 26
    iput-object p2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    .line 27
    iput-boolean p3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersHeightsByItemsIds:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method private layoutHeader(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 245
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 246
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 248
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 239
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    return-void
.end method

.method public getHeaderHeight(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersHeightsByItemsIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderViewByItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersHeightsByItemsIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersHeightsByItemsIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderId(I)J
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderViewByItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerViewHelper;->convertPreLayoutPositionToPostLayout(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v0

    .line 37
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v1, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    .line 42
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v1, v4}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 45
    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v4, v1, v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 46
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->layoutHeader(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public isHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerViewHelper;->convertPreLayoutPositionToPostLayout(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v3

    .line 73
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_0

    move v2, v0

    .line 74
    :goto_0
    if-ge v2, v3, :cond_0

    .line 75
    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_4

    .line 80
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v4, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v4, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky:Z

    return v0
.end method

.method public onItemRangeChanged(II)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    add-int v0, p1, p2

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    move v0, p1

    .line 215
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 222
    :goto_1
    if-ge v0, p2, :cond_2

    .line 223
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 227
    if-lez p1, :cond_3

    .line 228
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 229
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_3
    add-int v0, p1, p2

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 232
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int v3, p1, p2

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 233
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int v3, p1, p2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 229
    goto :goto_2

    :cond_6
    move v1, v2

    .line 233
    goto :goto_3
.end method

.method public onItemRangeInserted(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 130
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, p1, p2

    if-le v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int v1, p1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 147
    :goto_0
    if-gt v0, v3, :cond_1

    .line 148
    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    if-ge p1, p2, :cond_8

    .line 154
    if-nez p1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p2}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 166
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 167
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 170
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    :goto_4
    return-void

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 159
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 160
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v8

    .line 161
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 161
    goto :goto_5

    :cond_5
    move v0, v2

    .line 162
    goto :goto_6

    :cond_6
    move v0, v2

    .line 167
    goto :goto_2

    :cond_7
    move v1, v2

    .line 170
    goto :goto_3

    .line 173
    :cond_8
    if-le p1, p2, :cond_e

    .line 174
    if-nez p2, :cond_9

    .line 175
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_7
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 186
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 187
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c

    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 191
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p2}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 179
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 180
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p2, 0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v8

    .line 181
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    cmp-long v0, v4, v8

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move v0, v2

    .line 181
    goto :goto_a

    :cond_b
    move v0, v2

    .line 182
    goto :goto_b

    :cond_c
    move v0, v2

    .line 187
    goto :goto_8

    :cond_d
    move v1, v2

    .line 191
    goto :goto_9

    .line 195
    :cond_e
    if-nez p1, :cond_f

    .line 196
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 199
    :cond_f
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 200
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 201
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    cmp-long v0, v4, v6

    if-eqz v0, :cond_10

    move v0, v1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v0, v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    .line 205
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    move v0, v2

    .line 201
    goto :goto_c

    :cond_11
    move v1, v2

    .line 205
    goto :goto_d
.end method

.method public onItemRangeRemoved(II)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->headersViewByHeadersIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v2, p1, p2

    if-le v1, v2, :cond_2

    move v1, v0

    .line 112
    :goto_0
    if-ge v1, p2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    add-int v2, p1, p2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    if-ge v0, p2, :cond_2

    .line 122
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeaderByItemPosition:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    return-void
.end method

.method public wasHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerViewHelper;->convertPreLayoutPositionToPostLayout(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v1

    .line 94
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    invoke-interface {v4, v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->adapter:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersAdapter;->getHeaderId(I)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->wasHeaderByItemId:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
