.class public Lio/casper/android/i/p;
.super Landroid/support/v4/app/Fragment;
.source "SnapsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapsFragment"


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mActionButtonLaunchBlankSnap:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private mActionButtonLaunchCamera:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private mActionButtonLaunchGallery:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private mActionMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private mAdManager:Lio/casper/android/l/a;

.field private mAdapter:Lio/casper/android/a/a/g;

.field private mAddonManager:Lio/casper/android/l/b;

.field private mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFriendManager:Lio/casper/android/l/h;

.field private mHasMore:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingMore:Z

.field private mNextIterationToken:Ljava/lang/String;

.field private mNotificationManager:Lio/casper/android/l/o;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReciever:Landroid/content/BroadcastReceiver;

.field private mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mScrollListener:Lio/casper/android/ui/e;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatSyncManager:Lio/casper/android/l/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/i/p;->mHasMore:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/i/p;->mLoadingMore:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/i/p;->mSnapObjects:Ljava/util/List;

    .line 90
    new-instance v0, Lio/casper/android/i/p$1;

    invoke-direct {v0, p0}, Lio/casper/android/i/p$1;-><init>(Lio/casper/android/i/p;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mReciever:Landroid/content/BroadcastReceiver;

    .line 127
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/p;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mActionMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/p;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lio/casper/android/i/p;->mLoadingMore:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/i/p;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/p;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lio/casper/android/i/p;->mLoadingMore:Z

    return v0
.end method

.method static synthetic d(Lio/casper/android/i/p;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lio/casper/android/i/p;->mHasMore:Z

    return v0
.end method

.method static synthetic e(Lio/casper/android/i/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mNextIterationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/i/p;)Lio/casper/android/l/u;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mSnapchatSyncManager:Lio/casper/android/l/u;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/i/p;)Lio/casper/android/a/a/g;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/i/p;)Lio/casper/android/l/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mAddonManager:Lio/casper/android/l/b;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/i/p;)Lio/casper/android/l/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mAdManager:Lio/casper/android/l/a;

    return-object v0
.end method

.method static synthetic j(Lio/casper/android/i/p;)Lio/casper/android/l/o;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/i/p;->mNotificationManager:Lio/casper/android/l/o;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lio/casper/android/i/p;->mHasMore:Z

    .line 223
    invoke-virtual {p0, v0}, Lio/casper/android/i/p;->a(Z)V

    .line 225
    new-instance v0, Lio/casper/android/n/a/b/g;

    iget-object v1, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/n/a/b/g;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v1, Lio/casper/android/i/p$7;

    invoke-direct {v1, p0, v0}, Lio/casper/android/i/p$7;-><init>(Lio/casper/android/i/p;Lio/casper/android/n/a/b/g;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/g;->a(Lio/casper/android/c/c/a/a;)V

    .line 313
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/casper/android/i/p;->mLoadingMore:Z

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/p;->a(Z)V

    .line 320
    new-instance v0, Lio/casper/android/n/a/b/g;

    iget-object v1, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lio/casper/android/n/a/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    new-instance v1, Lio/casper/android/i/p$8;

    invoke-direct {v1, p0}, Lio/casper/android/i/p$8;-><init>(Lio/casper/android/i/p;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/g;->a(Lio/casper/android/c/c/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    if-nez p1, :cond_1

    .line 377
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    .line 360
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->f()Lio/casper/android/n/a/c/b/w;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    invoke-virtual {v2, v0}, Lio/casper/android/a/a/g;->a(Ljava/lang/Object;)V

    .line 364
    :cond_2
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/casper/android/i/p;->mHasMore:Z

    .line 366
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/p;->mNextIterationToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lio/casper/android/i/p;->mHasMore:Z

    goto :goto_1

    .line 373
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/i/p;->mHasMore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    iput-boolean p1, p0, Lio/casper/android/i/p;->mLoadingMore:Z

    .line 423
    iget-object v0, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    check-cast v0, Lio/casper/android/activity/MainActivity;

    invoke-virtual {v0, p1}, Lio/casper/android/activity/MainActivity;->a(Z)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lio/casper/android/i/p;->mEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    invoke-virtual {v0}, Lio/casper/android/a/a/g;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lio/casper/android/i/p;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    :cond_1
    if-nez p1, :cond_2

    .line 435
    iget-object v0, p0, Lio/casper/android/i/p;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lio/casper/android/i/p;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 438
    iget-object v0, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    invoke-virtual {v0}, Lio/casper/android/a/a/g;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 439
    iget-object v0, p0, Lio/casper/android/i/p;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_2
    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    invoke-virtual {v0}, Lio/casper/android/a/a/g;->a()V

    .line 383
    iget-object v0, p0, Lio/casper/android/i/p;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/b;->e()Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/a;

    .line 386
    sget-object v2, Lio/casper/android/service/BackgroundUploadIntentService;->mBackgroundUploadTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lio/casper/android/e/b/a;->a(I)V

    .line 388
    iget-object v2, p0, Lio/casper/android/i/p;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v2, v0}, Lio/casper/android/n/c/a/b;->c(Lio/casper/android/e/a/d;)J

    .line 391
    :cond_0
    iget-object v2, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lio/casper/android/a/a/g;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0}, Lio/casper/android/i/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/p;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    .line 137
    new-instance v0, Lio/casper/android/l/a;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mAdManager:Lio/casper/android/l/a;

    .line 138
    new-instance v0, Lio/casper/android/l/b;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mAddonManager:Lio/casper/android/l/b;

    .line 139
    new-instance v0, Lio/casper/android/l/s;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mAccountManager:Lio/casper/android/l/s;

    .line 140
    new-instance v0, Lio/casper/android/l/o;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mNotificationManager:Lio/casper/android/l/o;

    .line 141
    new-instance v0, Lio/casper/android/l/h;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mFriendManager:Lio/casper/android/l/h;

    .line 142
    iget-object v0, p0, Lio/casper/android/i/p;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/p;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 143
    new-instance v0, Lio/casper/android/l/r;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mSettingsManager:Lio/casper/android/l/r;

    .line 144
    new-instance v0, Lio/casper/android/l/u;

    iget-object v2, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/l/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mSnapchatSyncManager:Lio/casper/android/l/u;

    .line 146
    const v0, 0x7f030036

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    const v0, 0x7f0c00f5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/casper/android/i/p;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 149
    const v0, 0x7f0c008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/casper/android/i/p;->mListView:Landroid/widget/ListView;

    .line 150
    const v0, 0x7f0c009c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/p;->mProgressBar:Landroid/widget/ProgressBar;

    .line 151
    iget-object v0, p0, Lio/casper/android/i/p;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget-object v4, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 152
    const v0, 0x7f0c009f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/p;->mEmptyText:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0c00f6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lio/casper/android/i/p;->mActionMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 155
    const v0, 0x7f0c00f7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchBlankSnap:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 156
    const v0, 0x7f0c00f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchCamera:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 157
    const v0, 0x7f0c00f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchGallery:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 159
    iget-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchCamera:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lio/casper/android/i/p$2;

    invoke-direct {v3, p0}, Lio/casper/android/i/p$2;-><init>(Lio/casper/android/i/p;)V

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchGallery:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lio/casper/android/i/p$3;

    invoke-direct {v3, p0}, Lio/casper/android/i/p$3;-><init>(Lio/casper/android/i/p;)V

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lio/casper/android/i/p;->mActionButtonLaunchBlankSnap:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lio/casper/android/i/p$4;

    invoke-direct {v3, p0}, Lio/casper/android/i/p$4;-><init>(Lio/casper/android/i/p;)V

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v3, p0, Lio/casper/android/i/p;->mActionMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iget-object v0, p0, Lio/casper/android/i/p;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lio/casper/android/i/p;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lio/casper/android/i/p$5;

    invoke-direct {v1, p0}, Lio/casper/android/i/p$5;-><init>(Lio/casper/android/i/p;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 197
    new-instance v0, Lio/casper/android/i/p$6;

    invoke-direct {v0, p0}, Lio/casper/android/i/p$6;-><init>(Lio/casper/android/i/p;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mScrollListener:Lio/casper/android/ui/e;

    .line 211
    iget-object v0, p0, Lio/casper/android/i/p;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/casper/android/i/p;->mScrollListener:Lio/casper/android/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 212
    new-instance v0, Lio/casper/android/a/a/g;

    iget-object v1, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/a/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    .line 213
    iget-object v0, p0, Lio/casper/android/i/p;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/casper/android/i/p;->mAdapter:Lio/casper/android/a/a/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Lio/casper/android/i/p;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/casper/android/i/p;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 216
    return-object v2

    .line 188
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 122
    iget-object v0, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/p;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string v1, "io.casper.android.INTENT_REFRESH_SNAPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "io.casper.android.INTENT_BACKGROUND_UPLOAD_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lio/casper/android/i/p;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/i/p;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lio/casper/android/i/p;->a()V

    .line 117
    return-void
.end method
