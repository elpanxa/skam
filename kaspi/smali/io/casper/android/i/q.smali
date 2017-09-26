.class public Lio/casper/android/i/q;
.super Landroid/support/v4/app/Fragment;
.source "StoriesFragment.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAdapter:Lio/casper/android/a/a/h;

.field private mAddonManager:Lio/casper/android/l/b;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatSyncManager:Lio/casper/android/l/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/q;)Lio/casper/android/l/u;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mSnapchatSyncManager:Lio/casper/android/l/u;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/q;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/q;)Lio/casper/android/a/a/h;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/q;)Lio/casper/android/l/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mAddonManager:Lio/casper/android/l/b;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/i/q;)Lio/casper/android/l/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mAdManager:Lio/casper/android/l/a;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/i/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/q;->a(Z)V

    .line 95
    new-instance v0, Lio/casper/android/n/a/b/t;

    iget-object v1, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/n/a/b/t;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Lio/casper/android/i/q$2;

    invoke-direct {v1, p0, v0}, Lio/casper/android/i/q$2;-><init>(Lio/casper/android/i/q;Lio/casper/android/n/a/b/t;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/t;->a(Lio/casper/android/c/c/a/a;)V

    .line 183
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/m/a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    invoke-virtual {v0}, Lio/casper/android/a/a/h;->d()V

    .line 190
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/m/a;

    .line 191
    iget-object v2, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    invoke-virtual {v2, v0}, Lio/casper/android/a/a/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lio/casper/android/i/q;->mEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    invoke-virtual {v0}, Lio/casper/android/a/a/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/casper/android/i/q;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    :cond_1
    if-nez p1, :cond_2

    .line 208
    iget-object v0, p0, Lio/casper/android/i/q;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lio/casper/android/i/q;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 211
    iget-object v0, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    invoke-virtual {v0}, Lio/casper/android/a/a/h;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lio/casper/android/i/q;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Lio/casper/android/i/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/q;->mAdManager:Lio/casper/android/l/a;

    .line 61
    new-instance v0, Lio/casper/android/l/b;

    iget-object v1, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/q;->mAddonManager:Lio/casper/android/l/b;

    .line 62
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/q;->mSettingsManager:Lio/casper/android/l/r;

    .line 63
    new-instance v0, Lio/casper/android/l/u;

    iget-object v1, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/q;->mSnapchatSyncManager:Lio/casper/android/l/u;

    .line 65
    const v0, 0x7f030045

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    const v0, 0x7f0c00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/casper/android/i/q;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 68
    const v0, 0x7f0c008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/casper/android/i/q;->mListView:Landroid/widget/ListView;

    .line 69
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/q;->mProgressBar:Landroid/widget/ProgressBar;

    .line 70
    iget-object v0, p0, Lio/casper/android/i/q;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 72
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/q;->mEmptyText:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lio/casper/android/i/q;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lio/casper/android/i/q$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/q$1;-><init>(Lio/casper/android/i/q;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 81
    new-instance v0, Lio/casper/android/a/a/h;

    iget-object v2, p0, Lio/casper/android/i/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lio/casper/android/a/a/h;-><init>(Landroid/content/Context;Lio/casper/android/i/q;)V

    iput-object v0, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    .line 82
    iget-object v0, p0, Lio/casper/android/i/q;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lio/casper/android/i/q;->mAdapter:Lio/casper/android/a/a/h;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lio/casper/android/i/q;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lio/casper/android/i/q;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lio/casper/android/i/q;->a()V

    .line 87
    return-object v1
.end method
