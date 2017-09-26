.class public Lio/casper/android/activity/SendActivity;
.super Lio/casper/android/activity/a/a;
.source "SendActivity.java"


# static fields
.field public static final KEY_MEDIA_FILE:Ljava/lang/String; = "media_file"

.field public static final KEY_MEDIA_FILE_THUMBNAIL:Ljava/lang/String; = "media_file_thumbnail"

.field public static final KEY_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final KEY_MEDIA_TIME:Ljava/lang/String; = "media_time"

.field public static final KEY_MEDIA_TYPE:Ljava/lang/String; = "media_type"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mSendFragment:Lio/casper/android/i/m;

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
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SendActivity;->setContentView(I)V

    .line 44
    iput-object p0, p0, Lio/casper/android/activity/SendActivity;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/SendActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SendActivity;->mAdManager:Lio/casper/android/l/a;

    .line 48
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/SendActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 49
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/SendActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 51
    iget-object v1, p0, Lio/casper/android/activity/SendActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 53
    iget-object v0, p0, Lio/casper/android/activity/SendActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SendActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lio/casper/android/i/m;->a(Landroid/os/Bundle;)Lio/casper/android/i/m;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SendActivity;->mSendFragment:Lio/casper/android/i/m;

    .line 61
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lio/casper/android/activity/SendActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lio/casper/android/activity/SendActivity;->mSendFragment:Lio/casper/android/i/m;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 75
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 76
    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :sswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/SendActivity;->onBackPressed()V

    goto :goto_0

    .line 91
    :sswitch_1
    iget-object v1, p0, Lio/casper/android/activity/SendActivity;->mSendFragment:Lio/casper/android/i/m;

    invoke-virtual {v1}, Lio/casper/android/i/m;->b()V

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c015a -> :sswitch_1
    .end sparse-switch
.end method
