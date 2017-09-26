.class public Lio/casper/android/activity/UpdatesActivity;
.super Lio/casper/android/activity/a/a;
.source "UpdatesActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentPagerAdapter:Lio/casper/android/a/d;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UpdatesActivity;->setContentView(I)V

    .line 35
    iput-object p0, p0, Lio/casper/android/activity/UpdatesActivity;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/UpdatesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/UpdatesActivity;->mAdManager:Lio/casper/android/l/a;

    .line 39
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/UpdatesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 40
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lio/casper/android/activity/UpdatesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 42
    iget-object v0, p0, Lio/casper/android/activity/UpdatesActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UpdatesActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 43
    invoke-virtual {p0}, Lio/casper/android/activity/UpdatesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    iget-object v1, p0, Lio/casper/android/activity/UpdatesActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UpdatesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v1, Lio/casper/android/i/r;

    invoke-direct {v1}, Lio/casper/android/i/r;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lio/casper/android/a/d;

    invoke-virtual {p0}, Lio/casper/android/activity/UpdatesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lio/casper/android/activity/UpdatesActivity;->mFragmentPagerAdapter:Lio/casper/android/a/d;

    .line 52
    iget-object v0, p0, Lio/casper/android/activity/UpdatesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lio/casper/android/activity/UpdatesActivity;->mFragmentPagerAdapter:Lio/casper/android/a/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/UpdatesActivity;->onBackPressed()V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
