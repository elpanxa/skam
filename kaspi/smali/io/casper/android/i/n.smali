.class public Lio/casper/android/i/n;
.super Landroid/support/v4/app/Fragment;
.source "ServerFontsFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/c;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFontManager:Lio/casper/android/l/g;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mListener:Lio/casper/android/a/c$a;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mSelectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/n;)Lio/casper/android/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/n;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/i/n;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/a/c$a;)Lio/casper/android/i/n;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/casper/android/i/n;->mListener:Lio/casper/android/a/c$a;

    .line 62
    return-object p0
.end method

.method public a(Z)Lio/casper/android/i/n;
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lio/casper/android/i/n;->mSelectMode:Z

    .line 57
    return-object p0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lio/casper/android/i/n;->mFontManager:Lio/casper/android/l/g;

    invoke-virtual {v0}, Lio/casper/android/l/g;->b()Ljava/util/List;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/casper/android/i/n;->b(Z)V

    .line 113
    new-instance v1, Lio/casper/android/c/b/a/c;

    iget-object v2, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/casper/android/c/b/a/c;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Lio/casper/android/i/n$2;

    invoke-direct {v2, p0, v0, v1}, Lio/casper/android/i/n$2;-><init>(Lio/casper/android/i/n;Ljava/util/List;Lio/casper/android/c/b/a/c;)V

    invoke-virtual {v1, v2}, Lio/casper/android/c/b/a/c;->a(Lio/casper/android/c/c/a/a;)V

    .line 269
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lio/casper/android/i/n;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    iget-object v0, p0, Lio/casper/android/i/n;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lio/casper/android/i/n;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 279
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0}, Lio/casper/android/i/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/n;->mLearnManager:Lio/casper/android/l/l;

    .line 71
    new-instance v0, Lio/casper/android/l/g;

    iget-object v1, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/n;->mFontManager:Lio/casper/android/l/g;

    .line 73
    const v0, 0x7f030039

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    const v0, 0x7f0c00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/casper/android/i/n;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 76
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/n;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/n;->mProgressBar:Landroid/widget/ProgressBar;

    .line 78
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/n;->mEmptyText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lio/casper/android/i/n;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v5, [I

    iget-object v3, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 81
    iget-object v0, p0, Lio/casper/android/i/n;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lio/casper/android/util/l;->THEME_COLOUR_FILTER:Landroid/graphics/LightingColorFilter;

    invoke-static {v0, v2}, Lio/casper/android/util/l;->a(Landroid/widget/ProgressBar;Landroid/graphics/LightingColorFilter;)V

    .line 83
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/n;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 84
    iget-object v0, p0, Lio/casper/android/i/n;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 85
    iget-object v0, p0, Lio/casper/android/i/n;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/n;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v0, p0, Lio/casper/android/i/n;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lio/casper/android/ui/c;

    iget-object v3, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lio/casper/android/ui/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    iget-object v0, p0, Lio/casper/android/i/n;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lio/casper/android/i/n$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/n$1;-><init>(Lio/casper/android/i/n;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 95
    new-instance v0, Lio/casper/android/a/c;

    iget-object v2, p0, Lio/casper/android/i/n;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    .line 96
    iget-object v0, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/c;->a()V

    .line 97
    iget-object v0, p0, Lio/casper/android/i/n;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lio/casper/android/i/n;->mAdapter:Lio/casper/android/a/c;

    iget-object v2, p0, Lio/casper/android/i/n;->mListener:Lio/casper/android/a/c$a;

    invoke-virtual {v0, v2}, Lio/casper/android/a/c;->a(Lio/casper/android/a/c$a;)V

    .line 101
    invoke-virtual {p0}, Lio/casper/android/i/n;->a()V

    .line 103
    return-object v1
.end method
