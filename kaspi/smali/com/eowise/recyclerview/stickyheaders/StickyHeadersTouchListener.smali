.class public Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;
.super Ljava/lang/Object;
.source "StickyHeadersTouchListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

.field private listener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/eowise/recyclerview/stickyheaders/HeaderStore;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    .line 19
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;

    invoke-direct {v2, p0, p1}, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener$SingleTapDetector;-><init>(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/HeaderStore;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->headerStore:Lcom/eowise/recyclerview/stickyheaders/HeaderStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;)Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->listener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->listener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setListener(Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/eowise/recyclerview/stickyheaders/StickyHeadersTouchListener;->listener:Lcom/eowise/recyclerview/stickyheaders/OnHeaderClickListener;

    .line 39
    return-void
.end method
