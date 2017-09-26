.class public Lio/casper/android/activity/FriendStoriesActivity;
.super Lio/casper/android/activity/a/a;
.source "FriendStoriesActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mStoriesFragment:Lio/casper/android/i/e;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 36
    :cond_0
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendStoriesActivity;->setContentView(I)V

    .line 38
    iput-object p0, p0, Lio/casper/android/activity/FriendStoriesActivity;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FriendStoriesActivity;->mAdManager:Lio/casper/android/l/a;

    .line 42
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/FriendStoriesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 43
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/FriendStoriesActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lio/casper/android/activity/FriendStoriesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendStoriesActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 46
    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FriendStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 47
    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 50
    const-string v1, "container"

    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lio/casper/android/i/e;

    invoke-direct {v1}, Lio/casper/android/i/e;-><init>()V

    iput-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mStoriesFragment:Lio/casper/android/i/e;

    .line 53
    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mStoriesFragment:Lio/casper/android/i/e;

    invoke-virtual {v1, v0}, Lio/casper/android/i/e;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lio/casper/android/activity/FriendStoriesActivity;->mStoriesFragment:Lio/casper/android/i/e;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 67
    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 68
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 93
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/FriendStoriesActivity;->onBackPressed()V

    goto :goto_0

    .line 83
    :sswitch_1
    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mStoriesFragment:Lio/casper/android/i/e;

    invoke-virtual {v1}, Lio/casper/android/i/e;->a()V

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v1, p0, Lio/casper/android/activity/FriendStoriesActivity;->mStoriesFragment:Lio/casper/android/i/e;

    invoke-virtual {v1}, Lio/casper/android/i/e;->b()V

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0156 -> :sswitch_1
        0x7f0c0158 -> :sswitch_2
    .end sparse-switch
.end method
