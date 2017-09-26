.class public Lio/casper/android/activity/EmojiGoogleActivity;
.super Lio/casper/android/activity/a/a;
.source "EmojiGoogleActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EmojiGoogleActivity;->setContentView(I)V

    .line 37
    iput-object p0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mAdManager:Lio/casper/android/l/a;

    .line 40
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 42
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EmojiGoogleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 43
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EmojiGoogleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EmojiGoogleActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 46
    iget-object v1, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/EmojiGoogleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 47
    invoke-virtual {p0}, Lio/casper/android/activity/EmojiGoogleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    iget-object v0, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    sget-object v1, Lio/casper/android/a;->EMOJI_GOOGLE_PACK_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/k;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 50
    new-instance v1, Lio/casper/android/activity/EmojiGoogleActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EmojiGoogleActivity$1;-><init>(Lio/casper/android/activity/EmojiGoogleActivity;)V

    invoke-static {v0, v1}, Lio/casper/android/i/k;->a(Ljava/io/File;Lio/casper/android/i/k$a;)Lio/casper/android/i/k;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lio/casper/android/activity/EmojiGoogleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lio/casper/android/activity/EmojiGoogleActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/EmojiGoogleActivity;->onBackPressed()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
