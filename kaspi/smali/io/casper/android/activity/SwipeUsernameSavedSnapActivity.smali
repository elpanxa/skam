.class public Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;
.super Lio/casper/android/activity/a/a;
.source "SwipeUsernameSavedSnapActivity.java"


# static fields
.field public static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final KEY_FILES:Ljava/lang/String; = "files"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Ljava/lang/String;

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mViewPager:Lio/casper/android/ui/VerticalViewPager;

.field private mViewPagerAdapater:Lio/casper/android/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 41
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/VerticalViewPager;

    iput-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    .line 47
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mDisplay:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mFiles:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mPosition:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mDisplay:Ljava/lang/String;

    invoke-static {v3, v0}, Lio/casper/android/i/s;->a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/i/s;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Lio/casper/android/a/d;

    invoke-virtual {p0}, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPagerAdapater:Lio/casper/android/a/d;

    .line 58
    iget-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    iget-object v1, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPagerAdapater:Lio/casper/android/a/d;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0, v4}, Lio/casper/android/ui/VerticalViewPager;->setOffscreenPageLimit(I)V

    .line 61
    iget-object v0, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    iget v1, p0, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/VerticalViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
