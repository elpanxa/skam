.class public Lio/casper/android/i/r;
.super Landroid/support/v4/app/Fragment;
.source "UpdatesFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/i;

.field public mBetaUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mUpdateManager:Lio/casper/android/l/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/i/r;->mBetaUpdates:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/r;)Lio/casper/android/l/x;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/i/r;->mUpdateManager:Lio/casper/android/l/x;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/r;)Lio/casper/android/a/i;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/i/r;->mAdapter:Lio/casper/android/a/i;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/r;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/i/r;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/r;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/r;->a(Z)V

    .line 95
    new-instance v0, Lio/casper/android/c/b/a/e;

    iget-object v1, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/c/b/a/e;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Lio/casper/android/i/r$2;

    invoke-direct {v1, p0, v0}, Lio/casper/android/i/r$2;-><init>(Lio/casper/android/i/r;Lio/casper/android/c/b/a/e;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/e;->a(Lio/casper/android/c/c/a/a;)V

    .line 160
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/casper/android/i/r;->mAdapter:Lio/casper/android/a/i;

    invoke-virtual {v0}, Lio/casper/android/a/i;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/casper/android/i/r;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    :cond_0
    if-nez p1, :cond_1

    .line 167
    iget-object v0, p0, Lio/casper/android/i/r;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lio/casper/android/i/r;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 170
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0}, Lio/casper/android/i/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lio/casper/android/l/x;

    iget-object v1, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/r;->mUpdateManager:Lio/casper/android/l/x;

    .line 55
    const v0, 0x7f030047

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    const v0, 0x7f0c00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/casper/android/i/r;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 58
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/r;->mProgressBar:Landroid/widget/ProgressBar;

    .line 60
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/r;->mEmptyText:Landroid/widget/TextView;

    .line 62
    iget-boolean v0, p0, Lio/casper/android/i/r;->mBetaUpdates:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lio/casper/android/i/r;->mEmptyText:Landroid/widget/TextView;

    const v2, 0x7f0700d9

    invoke-virtual {p0, v2}, Lio/casper/android/i/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lio/casper/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lio/casper/android/i/r;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v6, [I

    iget-object v3, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 69
    iget-object v0, p0, Lio/casper/android/i/r;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lio/casper/android/util/l;->THEME_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v2}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 71
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/r;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 72
    iget-object v0, p0, Lio/casper/android/i/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 73
    iget-object v0, p0, Lio/casper/android/i/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/r;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lio/casper/android/i/r;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lio/casper/android/i/r$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/r$1;-><init>(Lio/casper/android/i/r;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 82
    new-instance v0, Lio/casper/android/a/i;

    iget-object v2, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/r;->mAdapter:Lio/casper/android/a/i;

    .line 83
    iget-object v0, p0, Lio/casper/android/i/r;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/r;->mAdapter:Lio/casper/android/a/i;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    invoke-virtual {p0}, Lio/casper/android/i/r;->a()V

    .line 87
    return-object v1

    .line 65
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/r;->mEmptyText:Landroid/widget/TextView;

    const v2, 0x7f0700da

    invoke-virtual {p0, v2}, Lio/casper/android/i/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lio/casper/android/i/r;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lio/casper/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
