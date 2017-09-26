.class public Lio/casper/android/i/c;
.super Landroid/support/v4/app/Fragment;
.source "EmojiPickerFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiCallback:Lio/casper/android/a/a/b$a;

.field private mEmojiLoader:Lio/casper/android/util/c/c;

.field private mPagerAdapter:Lio/casper/android/a/d;

.field private mResources:Landroid/content/res/Resources;

.field private mTabHost:Lit/neokree/materialtabs/MaterialTabHost;

.field private mTabListener:Lit/neokree/materialtabs/MaterialTabListener;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/i/c;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/c;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static a(Lio/casper/android/util/c/c;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/c;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lio/casper/android/i/c;

    invoke-direct {v0}, Lio/casper/android/i/c;-><init>()V

    .line 50
    iput-object p0, v0, Lio/casper/android/i/c;->mEmojiLoader:Lio/casper/android/util/c/c;

    .line 51
    iput-object p1, v0, Lio/casper/android/i/c;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    .line 53
    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/c;)Lit/neokree/materialtabs/MaterialTabHost;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/c;->mTabHost:Lit/neokree/materialtabs/MaterialTabHost;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/c;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/c;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-virtual {p0}, Lio/casper/android/i/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/c;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lio/casper/android/i/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/c;->mResources:Landroid/content/res/Resources;

    .line 63
    const v0, 0x7f030038

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0c008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/i/c;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 66
    const v0, 0x7f0c00e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lio/casper/android/i/c;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 67
    const v0, 0x7f0c00fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/neokree/materialtabs/MaterialTabHost;

    iput-object v0, p0, Lio/casper/android/i/c;->mTabHost:Lit/neokree/materialtabs/MaterialTabHost;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v0, Lio/casper/android/i/c$1;

    invoke-direct {v0, p0}, Lio/casper/android/i/c$1;-><init>(Lio/casper/android/i/c;)V

    iput-object v0, p0, Lio/casper/android/i/c;->mTabListener:Lit/neokree/materialtabs/MaterialTabListener;

    .line 86
    invoke-static {}, Lio/casper/android/util/c/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/util/c/b$a;

    .line 87
    iget-object v4, p0, Lio/casper/android/i/c;->mEmojiLoader:Lio/casper/android/util/c/c;

    invoke-virtual {v0}, Lio/casper/android/util/c/b$a;->b()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lio/casper/android/i/c;->mEmojiCallback:Lio/casper/android/a/a/b$a;

    invoke-static {v4, v5, v6}, Lio/casper/android/i/b;->a(Lio/casper/android/util/c/c;Ljava/util/List;Lio/casper/android/a/a/b$a;)Lio/casper/android/i/b;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lio/casper/android/i/c;->mTabHost:Lit/neokree/materialtabs/MaterialTabHost;

    iget-object v5, p0, Lio/casper/android/i/c;->mTabHost:Lit/neokree/materialtabs/MaterialTabHost;

    invoke-virtual {v5}, Lit/neokree/materialtabs/MaterialTabHost;->newTab()Lit/neokree/materialtabs/MaterialTab;

    move-result-object v5

    iget-object v6, p0, Lio/casper/android/i/c;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lio/casper/android/util/c/b$a;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Lit/neokree/materialtabs/MaterialTab;->setIcon(Landroid/graphics/drawable/Drawable;)Lit/neokree/materialtabs/MaterialTab;

    move-result-object v0

    iget-object v5, p0, Lio/casper/android/i/c;->mTabListener:Lit/neokree/materialtabs/MaterialTabListener;

    invoke-virtual {v0, v5}, Lit/neokree/materialtabs/MaterialTab;->setTabListener(Lit/neokree/materialtabs/MaterialTabListener;)Lit/neokree/materialtabs/MaterialTab;

    move-result-object v0

    invoke-virtual {v4, v0}, Lit/neokree/materialtabs/MaterialTabHost;->addTab(Lit/neokree/materialtabs/MaterialTab;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v3, Lio/casper/android/a/d;

    iget-object v0, p0, Lio/casper/android/i/c;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lio/casper/android/i/c;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lio/casper/android/a/d;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v3, p0, Lio/casper/android/i/c;->mPagerAdapter:Lio/casper/android/a/d;

    .line 92
    iget-object v0, p0, Lio/casper/android/i/c;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lio/casper/android/i/c;->mPagerAdapter:Lio/casper/android/a/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 94
    iget-object v0, p0, Lio/casper/android/i/c;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f07019d

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 96
    iget-object v0, p0, Lio/casper/android/i/c;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lio/casper/android/i/c$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/c$2;-><init>(Lio/casper/android/i/c;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 148
    iget-object v0, p0, Lio/casper/android/i/c;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 150
    iget-object v0, p0, Lio/casper/android/i/c;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 151
    iget-object v0, p0, Lio/casper/android/i/c;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lio/casper/android/i/c$3;

    invoke-direct {v2, p0}, Lio/casper/android/i/c$3;-><init>(Lio/casper/android/i/c;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v2, Lio/casper/android/l/a;

    iget-object v0, p0, Lio/casper/android/i/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    .line 159
    const v0, 0x7f0c008d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 161
    return-object v1
.end method
