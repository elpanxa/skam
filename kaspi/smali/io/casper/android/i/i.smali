.class public Lio/casper/android/i/i;
.super Landroid/support/v4/app/Fragment;
.source "ImojiGridFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/g;

.field private mCallback:Lcom/imojiapp/imoji/sdk/Callback;

.field private mContext:Landroid/content/Context;

.field private mGridView:Lio/casper/android/ui/EndlessGridView;

.field private mHasMore:Z

.field private mIsLoadingMore:Z

.field private mOffset:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mResultsLimit:I

.field private mSearchQuery:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lio/casper/android/i/i;->mTitle:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lio/casper/android/i/i;->mSearchQuery:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lio/casper/android/i/i;->mHasMore:Z

    .line 40
    iput-boolean v1, p0, Lio/casper/android/i/i;->mIsLoadingMore:Z

    .line 41
    iput v1, p0, Lio/casper/android/i/i;->mOffset:I

    .line 42
    const/16 v0, 0x19

    iput v0, p0, Lio/casper/android/i/i;->mResultsLimit:I

    .line 47
    invoke-virtual {p0, v2}, Lio/casper/android/i/i;->setRetainInstance(Z)V

    .line 48
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/i;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lio/casper/android/i/i;->mOffset:I

    return p1
.end method

.method static synthetic a(Lio/casper/android/i/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/i/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/i/i;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lio/casper/android/i/i;

    invoke-direct {v0}, Lio/casper/android/i/i;-><init>()V

    .line 167
    invoke-virtual {v0, p0}, Lio/casper/android/i/i;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Lio/casper/android/i/i;->b(Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method static synthetic a(Lio/casper/android/i/i;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lio/casper/android/i/i;->mIsLoadingMore:Z

    return p1
.end method

.method static synthetic b(Lio/casper/android/i/i;)Lio/casper/android/a/g;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/i/i;->mAdapter:Lio/casper/android/a/g;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/i;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/i/i;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lio/casper/android/i/i;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/casper/android/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/i/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/i;)Lcom/imojiapp/imoji/sdk/Callback;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/i/i;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-boolean v0, p0, Lio/casper/android/i/i;->mHasMore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/casper/android/i/i;->mIsLoadingMore:Z

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/i;->mAdapter:Lio/casper/android/a/g;

    invoke-virtual {v0}, Lio/casper/android/a/g;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lio/casper/android/i/i;->mAdapter:Lio/casper/android/a/g;

    invoke-virtual {v0, v1}, Lio/casper/android/a/g;->a(Z)V

    .line 154
    :cond_2
    iput-boolean v1, p0, Lio/casper/android/i/i;->mIsLoadingMore:Z

    .line 156
    iget-object v0, p0, Lio/casper/android/i/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/i;->mSearchQuery:Ljava/lang/String;

    iget v2, p0, Lio/casper/android/i/i;->mOffset:I

    iget v3, p0, Lio/casper/android/i/i;->mResultsLimit:I

    iget-object v4, p0, Lio/casper/android/i/i;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imojiapp/imoji/sdk/ImojiApi;->search(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/casper/android/i/i;->mSearchQuery:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lio/casper/android/i/i;->mTitle:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lio/casper/android/i/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/i;->mContext:Landroid/content/Context;

    .line 63
    const v0, 0x7f03003f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0c008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/i/i;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 66
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/i;->mProgressBar:Landroid/widget/ProgressBar;

    .line 67
    const v0, 0x7f0c00fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/EndlessGridView;

    iput-object v0, p0, Lio/casper/android/i/i;->mGridView:Lio/casper/android/ui/EndlessGridView;

    .line 69
    iget-object v2, p0, Lio/casper/android/i/i;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lio/casper/android/i/i;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/i/i;->mSearchQuery:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lio/casper/android/i/i;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 71
    iget-object v0, p0, Lio/casper/android/i/i;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lio/casper/android/i/i$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/i$1;-><init>(Lio/casper/android/i/i;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lio/casper/android/a/g;

    iget-object v2, p0, Lio/casper/android/i/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/i;->mAdapter:Lio/casper/android/a/g;

    .line 79
    iget-object v0, p0, Lio/casper/android/i/i;->mGridView:Lio/casper/android/ui/EndlessGridView;

    iget-object v2, p0, Lio/casper/android/i/i;->mAdapter:Lio/casper/android/a/g;

    invoke-virtual {v0, v2}, Lio/casper/android/ui/EndlessGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lio/casper/android/i/i;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lio/casper/android/i/i;->mGridView:Lio/casper/android/ui/EndlessGridView;

    new-instance v2, Lio/casper/android/i/i$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/i$2;-><init>(Lio/casper/android/i/i;)V

    invoke-virtual {v0, v2}, Lio/casper/android/ui/EndlessGridView;->setScrollCallback(Lio/casper/android/ui/EndlessGridView$a;)V

    .line 90
    new-instance v0, Lio/casper/android/i/i$3;

    invoke-direct {v0, p0}, Lio/casper/android/i/i$3;-><init>(Lio/casper/android/i/i;)V

    iput-object v0, p0, Lio/casper/android/i/i;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 138
    invoke-virtual {p0}, Lio/casper/android/i/i;->a()V

    .line 140
    return-object v1

    .line 69
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/i;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method
