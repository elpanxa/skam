.class public Lio/casper/android/activity/FontsActivity;
.super Lio/casper/android/activity/a/a;
.source "FontsActivity.java"


# static fields
.field public static final ACTION_CHOOSE_FONT:Ljava/lang/String; = "action_choose_font"

.field public static final KEY_FONT:Ljava/lang/String; = "font"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFontManager:Lio/casper/android/l/g;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mSelectMode:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FontsActivity;->setContentView(I)V

    .line 45
    iput-object p0, p0, Lio/casper/android/activity/FontsActivity;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/FontsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FontsActivity;->mAdManager:Lio/casper/android/l/a;

    .line 48
    new-instance v0, Lio/casper/android/l/g;

    iget-object v1, p0, Lio/casper/android/activity/FontsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/FontsActivity;->mFontManager:Lio/casper/android/l/g;

    .line 50
    invoke-virtual {p0}, Lio/casper/android/activity/FontsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_choose_font"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-boolean v2, p0, Lio/casper/android/activity/FontsActivity;->mSelectMode:Z

    .line 54
    :cond_0
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FontsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/FontsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FontsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/FontsActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, p0, Lio/casper/android/activity/FontsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FontsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lio/casper/android/activity/FontsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    iget-object v1, p0, Lio/casper/android/activity/FontsActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/FontsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 61
    iget-object v0, p0, Lio/casper/android/activity/FontsActivity;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->s()V

    .line 63
    new-instance v0, Lio/casper/android/i/n;

    invoke-direct {v0}, Lio/casper/android/i/n;-><init>()V

    .line 64
    iget-boolean v1, p0, Lio/casper/android/activity/FontsActivity;->mSelectMode:Z

    invoke-virtual {v0, v1}, Lio/casper/android/i/n;->a(Z)Lio/casper/android/i/n;

    .line 65
    iget-boolean v1, p0, Lio/casper/android/activity/FontsActivity;->mSelectMode:Z

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Lio/casper/android/activity/FontsActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/FontsActivity$1;-><init>(Lio/casper/android/activity/FontsActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/i/n;->a(Lio/casper/android/a/c$a;)Lio/casper/android/i/n;

    .line 77
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/activity/FontsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lio/casper/android/activity/FontsActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 89
    invoke-virtual {p0}, Lio/casper/android/activity/FontsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 90
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 110
    :goto_0
    return v0

    .line 100
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/FontsActivity;->onBackPressed()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v1, p0, Lio/casper/android/activity/FontsActivity;->mFontManager:Lio/casper/android/l/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/casper/android/l/g;->a(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lio/casper/android/activity/FontsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700ab

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0155 -> :sswitch_1
    .end sparse-switch
.end method
