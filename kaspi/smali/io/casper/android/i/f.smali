.class public Lio/casper/android/i/f;
.super Landroid/support/v4/app/Fragment;
.source "FriendsFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/a/d;

.field private mAddButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFriendManager:Lio/casper/android/l/h;

.field private mFriendsTable:Lio/casper/android/n/c/a/d;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mReciever:Landroid/content/BroadcastReceiver;

.field private mSnapchatSyncManager:Lio/casper/android/l/u;

.field public refresh:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Lio/casper/android/i/f$1;

    invoke-direct {v0, p0}, Lio/casper/android/i/f$1;-><init>(Lio/casper/android/i/f;)V

    iput-object v0, p0, Lio/casper/android/i/f;->mReciever:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lio/casper/android/i/f$3;

    invoke-direct {v0, p0}, Lio/casper/android/i/f$3;-><init>(Lio/casper/android/i/f;)V

    iput-object v0, p0, Lio/casper/android/i/f;->refresh:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/f;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lio/casper/android/i/f;->a(Ljava/util/List;)V

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
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/casper/android/i/f;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/i/f$4;

    invoke-direct {v1, p0, p1}, Lio/casper/android/i/f$4;-><init>(Lio/casper/android/i/f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mFriendsTable:Lio/casper/android/n/c/a/d;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/f;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/f;)Lio/casper/android/l/u;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mSnapchatSyncManager:Lio/casper/android/l/u;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/i/f;)Lio/casper/android/l/h;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mFriendManager:Lio/casper/android/l/h;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/i/f;)Lio/casper/android/a/a/d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/casper/android/i/f;->mAdapter:Lio/casper/android/a/a/d;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Lio/casper/android/i/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/i/f;->mHandler:Landroid/os/Handler;

    .line 87
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/f;->mFriendsTable:Lio/casper/android/n/c/a/d;

    .line 89
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/f;->mFriendManager:Lio/casper/android/l/h;

    .line 90
    new-instance v0, Lio/casper/android/l/u;

    iget-object v1, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/f;->mSnapchatSyncManager:Lio/casper/android/l/u;

    .line 92
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 94
    iget-object v1, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/f;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 96
    iget-object v0, p0, Lio/casper/android/i/f;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 98
    const v0, 0x7f03003b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    const v0, 0x7f0c008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lio/casper/android/i/f;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 101
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/f;->mEmptyText:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0c00fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/casper/android/i/f;->mAddButton:Landroid/widget/Button;

    .line 104
    new-instance v0, Lio/casper/android/a/a/d;

    iget-object v2, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/f;->mAdapter:Lio/casper/android/a/a/d;

    .line 105
    iget-object v0, p0, Lio/casper/android/i/f;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/f;->mAdapter:Lio/casper/android/a/a/d;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 106
    iget-object v0, p0, Lio/casper/android/i/f;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lio/casper/android/i/f;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lio/casper/android/i/f;->mAddButton:Landroid/widget/Button;

    new-instance v2, Lio/casper/android/i/f$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/f$2;-><init>(Lio/casper/android/i/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lio/casper/android/i/f;->refresh:Ljava/lang/Runnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 73
    iget-object v0, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/f;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 67
    iget-object v0, p0, Lio/casper/android/i/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/casper/android/i/f;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "io.casper.android.INTENT_REFRESH_FRIENDS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method
