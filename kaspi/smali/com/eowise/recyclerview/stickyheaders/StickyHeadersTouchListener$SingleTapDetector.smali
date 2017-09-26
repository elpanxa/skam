.class Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyHeadersTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapDetector"
.end annotation


# instance fields
.field private final parent:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;


# direct methods
.method public constructor <init>(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    .line 47
    return-void
.end method

.method private findItemHolderUnder(FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 72
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isHeader(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v3}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderHeight(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    .line 93
    :cond_0
    :goto_1
    return-object v0

    .line 70
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->parent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderHeight(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->isSticky()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->findItemHolderUnder(FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderViewByItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    invoke-static {v2}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/eowise/recyclerview/stickyheaders/HeaderStore;->getHeaderId(I)J

    move-result-wide v2

    .line 61
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->this$0:Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;

    # getter for: Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->listener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;
    invoke-static {v0}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->access$100(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;->onHeaderClick(Landroid/view/View;J)V

    .line 62
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;->findItemHolderUnder(FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
