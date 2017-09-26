.class public Lio/casper/android/i/g;
.super Landroid/support/v4/app/Fragment;
.source "FriendsRequestsFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/a/d;

.field private mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private mReciever:Landroid/content/BroadcastReceiver;

.field public refresh:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Lio/casper/android/i/g$1;

    invoke-direct {v0, p0}, Lio/casper/android/i/g$1;-><init>(Lio/casper/android/i/g;)V

    iput-object v0, p0, Lio/casper/android/i/g;->mReciever:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lio/casper/android/i/g$2;

    invoke-direct {v0, p0}, Lio/casper/android/i/g$2;-><init>(Lio/casper/android/i/g;)V

    iput-object v0, p0, Lio/casper/android/i/g;->refresh:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/g;)Lio/casper/android/n/c/a/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/g;->mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/g;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lio/casper/android/i/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/i/g;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/i/g$3;

    invoke-direct {v1, p0, p1}, Lio/casper/android/i/g$3;-><init>(Lio/casper/android/i/g;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lio/casper/android/i/g;)Lio/casper/android/a/a/d;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/g;->mAdapter:Lio/casper/android/a/a/d;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lio/casper/android/i/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/g;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/i/g;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-static {}, Lio/casper/android/n/c/a/a;->i()Lio/casper/android/n/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/g;->mAddedMeFriendsTable:Lio/casper/android/n/c/a/a;

    .line 72
    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0c008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lio/casper/android/i/g;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 75
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/g;->mEmptyText:Landroid/widget/TextView;

    .line 77
    new-instance v0, Lio/casper/android/a/a/d;

    iget-object v2, p0, Lio/casper/android/i/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/g;->mAdapter:Lio/casper/android/a/a/d;

    .line 78
    iget-object v0, p0, Lio/casper/android/i/g;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/g;->mAdapter:Lio/casper/android/a/a/d;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 80
    iget-object v0, p0, Lio/casper/android/i/g;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/g;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lio/casper/android/i/g;->refresh:Ljava/lang/Runnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 56
    iget-object v0, p0, Lio/casper/android/i/g;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/g;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 50
    iget-object v0, p0, Lio/casper/android/i/g;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/g;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "io.casper.android.INTENT_REFRESH_FRIENDS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method
