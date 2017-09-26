.class public Lio/casper/android/activity/FriendChooserActivity;
.super Lio/casper/android/activity/a/a;
.source "FriendChooserActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# static fields
.field public static final KEY_USERNAMES:Ljava/lang/String; = "usernames"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAdapter:Lio/casper/android/a/a/c;

.field private mBlockedUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mFilter:Landroid/widget/Filter;

.field private mFriendsTable:Lio/casper/android/n/c/a/d;

.field private mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field public mRefresh:Ljava/lang/Runnable;

.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mBlockedUsernames:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lio/casper/android/activity/FriendChooserActivity$1;

    invoke-direct {v0, p0}, Lio/casper/android/activity/FriendChooserActivity$1;-><init>(Lio/casper/android/activity/FriendChooserActivity;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mRefresh:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/n/c/a/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mFriendsTable:Lio/casper/android/n/c/a/d;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/activity/FriendChooserActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/casper/android/activity/FriendChooserActivity;->a(Ljava/util/List;)V

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
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/activity/FriendChooserActivity$2;

    invoke-direct {v1, p0, p1}, Lio/casper/android/activity/FriendChooserActivity$2;-><init>(Lio/casper/android/activity/FriendChooserActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/a/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/activity/FriendChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->finish()V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->setContentView(I)V

    .line 72
    iput-object p0, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mFriendsTable:Lio/casper/android/n/c/a/d;

    .line 78
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdManager:Lio/casper/android/l/a;

    .line 79
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 81
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 83
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 84
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 85
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mEmptyText:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 89
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendChooserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 90
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    new-instance v0, Lio/casper/android/a/a/c;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    .line 93
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 94
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mListView:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/a/c;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mFilter:Landroid/widget/Filter;

    .line 98
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 99
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 100
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 101
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mRefresh:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CUSTOM_STORY_PRIVACY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mLearnManager:Lio/casper/android/l/l;

    sget-object v1, Lio/casper/android/l/l;->CUSTOM_STORY_PRIVACY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 111
    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 112
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 165
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 166
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->onBackPressed()V

    goto :goto_0

    .line 182
    :sswitch_1
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->onBackPressed()V

    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mBlockedUsernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v1, p0, Lio/casper/android/activity/FriendChooserActivity;->mBlockedUsernames:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/casper/android/activity/FriendChooserActivity;->mAdapter:Lio/casper/android/a/a/c;

    invoke-virtual {v2}, Lio/casper/android/a/a/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v3, "usernames"

    iget-object v4, p0, Lio/casper/android/activity/FriendChooserActivity;->mBlockedUsernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lio/casper/android/activity/FriendChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lio/casper/android/activity/FriendChooserActivity;->finish()V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0156 -> :sswitch_2
        0x7f0c0157 -> :sswitch_1
    .end sparse-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
