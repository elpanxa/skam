.class public Lio/casper/android/activity/SettingsActivity;
.super Lio/casper/android/activity/a/a;
.source "SettingsActivity.java"


# instance fields
.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->finish()V

    .line 23
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SettingsActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/SettingsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 33
    iget-object v0, p0, Lio/casper/android/activity/SettingsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 34
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c00e4

    new-instance v2, Lio/casper/android/i/o;

    invoke-direct {v2}, Lio/casper/android/i/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/SettingsActivity;->onBackPressed()V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
