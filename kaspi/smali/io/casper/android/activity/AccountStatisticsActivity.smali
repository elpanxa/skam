.class public Lio/casper/android/activity/AccountStatisticsActivity;
.super Lio/casper/android/activity/a/a;
.source "AccountStatisticsActivity.java"


# instance fields
.field private mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFriendsTable:Lio/casper/android/n/c/a/d;

.field private mListView:Landroid/widget/ListView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 32
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lio/casper/android/activity/AccountStatisticsActivity;->setContentView(I)V

    .line 35
    iput-object p0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mFriendsTable:Lio/casper/android/n/c/a/d;

    .line 39
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAdManager:Lio/casper/android/l/a;

    .line 41
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/AccountStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 42
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/AccountStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mListView:Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/AccountStatisticsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 45
    invoke-virtual {p0}, Lio/casper/android/activity/AccountStatisticsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    new-instance v0, Lio/casper/android/a/a/a;

    iget-object v1, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    .line 48
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->f()J

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v2}, Lio/casper/android/l/s;->g()J

    move-result-wide v2

    .line 52
    iget-object v4, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v4}, Lio/casper/android/l/s;->h()J

    move-result-wide v4

    .line 53
    iget-object v6, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mFriendsTable:Lio/casper/android/n/c/a/d;

    invoke-virtual {v6}, Lio/casper/android/n/c/a/d;->g()J

    move-result-wide v6

    .line 55
    iget-object v8, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    new-instance v9, Lio/casper/android/a/b/a;

    const v10, 0x7f0701eb

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lio/casper/android/a/b/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lio/casper/android/a/a/a;->a(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    new-instance v1, Lio/casper/android/a/b/a;

    const v8, 0x7f0701ad

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v8, v6}, Lio/casper/android/a/b/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/casper/android/a/a/a;->a(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    new-instance v1, Lio/casper/android/a/b/a;

    const v6, 0x7f0701f0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lio/casper/android/a/b/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/casper/android/a/a/a;->a(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAccountStatisticsAdapter:Lio/casper/android/a/a/a;

    new-instance v1, Lio/casper/android/a/b/a;

    const v2, 0x7f0701e0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/casper/android/a/b/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/casper/android/a/a/a;->a(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/AccountStatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 61
    iget-object v0, p0, Lio/casper/android/activity/AccountStatisticsActivity;->mAdManager:Lio/casper/android/l/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/l/a;->a(Lio/casper/android/l/a$a;)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/AccountStatisticsActivity;->finish()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
