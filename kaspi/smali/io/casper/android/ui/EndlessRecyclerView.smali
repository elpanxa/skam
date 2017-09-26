.class public Lio/casper/android/ui/EndlessRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "EndlessRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/EndlessRecyclerView$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPastVisiblesItems:I

.field private mScrollCallback:Lio/casper/android/ui/EndlessRecyclerView$a;

.field private mTotalItemCount:I

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/EndlessRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 31
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lio/casper/android/ui/EndlessRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 33
    new-instance v0, Lio/casper/android/ui/EndlessRecyclerView$1;

    invoke-direct {v0, p0}, Lio/casper/android/ui/EndlessRecyclerView$1;-><init>(Lio/casper/android/ui/EndlessRecyclerView;)V

    invoke-virtual {p0, v0}, Lio/casper/android/ui/EndlessRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/EndlessRecyclerView;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mVisibleItemCount:I

    return p1
.end method

.method static synthetic a(Lio/casper/android/ui/EndlessRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/ui/EndlessRecyclerView;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mVisibleItemCount:I

    return v0
.end method

.method static synthetic b(Lio/casper/android/ui/EndlessRecyclerView;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mTotalItemCount:I

    return p1
.end method

.method static synthetic c(Lio/casper/android/ui/EndlessRecyclerView;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mPastVisiblesItems:I

    return v0
.end method

.method static synthetic c(Lio/casper/android/ui/EndlessRecyclerView;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mPastVisiblesItems:I

    return p1
.end method

.method static synthetic d(Lio/casper/android/ui/EndlessRecyclerView;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mTotalItemCount:I

    return v0
.end method

.method static synthetic e(Lio/casper/android/ui/EndlessRecyclerView;)Lio/casper/android/ui/EndlessRecyclerView$a;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView;->mScrollCallback:Lio/casper/android/ui/EndlessRecyclerView$a;

    return-object v0
.end method


# virtual methods
.method public setScrollCallback(Lio/casper/android/ui/EndlessRecyclerView$a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lio/casper/android/ui/EndlessRecyclerView;->mScrollCallback:Lio/casper/android/ui/EndlessRecyclerView$a;

    .line 64
    return-void
.end method
