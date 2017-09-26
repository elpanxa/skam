.class Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandableStickyListHeadersAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field mCollapseHeaderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

.field mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/DualHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/DualHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    .line 19
    new-instance v0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public collapse(J)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->isHeaderCollapsed(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public expand(J)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->isHeaderCollapsed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public findItemIdByView(Landroid/view/View;)J
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public findViewByItemId(J)Landroid/view/View;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/DualHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getItemViewsByHeaderId(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lse/emilsjolander/stickylistheaders/DualHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isHeaderCollapsed(J)Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method
