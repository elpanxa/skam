.class public Lio/casper/android/activity/MyStoriesActivity;
.super Lio/casper/android/activity/a/a;
.source "MyStoriesActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lio/casper/android/activity/MyStoriesActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 32
    :cond_0
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MyStoriesActivity;->setContentView(I)V

    .line 34
    iput-object p0, p0, Lio/casper/android/activity/MyStoriesActivity;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/MyStoriesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/MyStoriesActivity;->mAdManager:Lio/casper/android/l/a;

    .line 38
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MyStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/MyStoriesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 39
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MyStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/MyStoriesActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 41
    iget-object v0, p0, Lio/casper/android/activity/MyStoriesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MyStoriesActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    iget-object v1, p0, Lio/casper/android/activity/MyStoriesActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/MyStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 43
    invoke-virtual {p0}, Lio/casper/android/activity/MyStoriesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 46
    const-string v1, "container"

    invoke-virtual {p0}, Lio/casper/android/activity/MyStoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lio/casper/android/i/l;

    invoke-direct {v1}, Lio/casper/android/i/l;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Lio/casper/android/i/l;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lio/casper/android/activity/MyStoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 53
    iget-object v2, p0, Lio/casper/android/activity/MyStoriesActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/MyStoriesActivity;->onBackPressed()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
