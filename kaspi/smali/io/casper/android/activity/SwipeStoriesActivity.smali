.class public Lio/casper/android/activity/SwipeStoriesActivity;
.super Lio/casper/android/activity/a/a;
.source "SwipeStoriesActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFriendStoriesTable:Lio/casper/android/n/c/a/c;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mStoriesTable:Lio/casper/android/n/c/a/g;

.field private mStoryId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field private mViewPager:Lio/casper/android/ui/VerticalViewPager;

.field private mViewPagerAdapater:Lio/casper/android/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeStoriesActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeStoriesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 46
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SwipeStoriesActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lio/casper/android/n/c/a/g;->i()Lio/casper/android/n/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mStoriesTable:Lio/casper/android/n/c/a/g;

    .line 51
    invoke-static {}, Lio/casper/android/n/c/a/c;->i()Lio/casper/android/n/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    .line 53
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 55
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SwipeStoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/VerticalViewPager;

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    .line 57
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeStoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mUsername:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lio/casper/android/activity/SwipeStoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mStoryId:Ljava/lang/String;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mStoriesTable:Lio/casper/android/n/c/a/g;

    sget-object v1, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    iget-object v3, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lio/casper/android/n/c/a/g;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mFriendStoriesTable:Lio/casper/android/n/c/a/c;

    sget-object v3, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    iget-object v5, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lio/casper/android/n/c/a/c;->a(Lio/casper/android/e/a/f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/x;

    .line 69
    iget-object v7, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v7, v0}, Lio/casper/android/l/k;->d(Lio/casper/android/n/a/c/b/x;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 71
    iget-object v7, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v1

    .line 75
    :cond_1
    invoke-static {v0}, Lio/casper/android/i/s;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/i/s;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    .line 79
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 84
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    .line 85
    iget-object v6, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v6, v0}, Lio/casper/android/l/k;->d(Lio/casper/android/n/a/c/b/x;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 87
    iget-object v6, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v1

    .line 91
    :cond_3
    invoke-static {v0}, Lio/casper/android/i/s;->a(Lio/casper/android/n/a/c/b/x;)Lio/casper/android/i/s;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    .line 96
    goto :goto_3

    .line 98
    :cond_4
    new-instance v0, Lio/casper/android/a/d;

    invoke-virtual {p0}, Lio/casper/android/activity/SwipeStoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPagerAdapater:Lio/casper/android/a/d;

    .line 99
    iget-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    iget-object v1, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPagerAdapater:Lio/casper/android/a/d;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0, v2}, Lio/casper/android/ui/VerticalViewPager;->setOffscreenPageLimit(I)V

    .line 102
    iget-object v0, p0, Lio/casper/android/activity/SwipeStoriesActivity;->mViewPager:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0, v3}, Lio/casper/android/ui/VerticalViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    move v1, v3

    goto :goto_2
.end method
