.class public Lio/casper/android/i/h;
.super Landroid/support/v4/app/Fragment;
.source "ImojiCategoriesFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/f;

.field private mCallback:Lcom/imojiapp/imoji/sdk/Callback;

.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/h;->setRetainInstance(Z)V

    .line 38
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/i/h;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/h;)Lio/casper/android/a/f;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/i/h;->mAdapter:Lio/casper/android/a/f;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/h;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/i/h;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/h;)Lcom/imojiapp/imoji/sdk/Callback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/i/h;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lio/casper/android/i/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/h;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f03003e

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/h;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/h;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/h;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 52
    new-instance v0, Lio/casper/android/a/f;

    iget-object v2, p0, Lio/casper/android/i/h;->mContext:Landroid/content/Context;

    new-instance v3, Lio/casper/android/i/h$1;

    invoke-direct {v3, p0}, Lio/casper/android/i/h$1;-><init>(Lio/casper/android/i/h;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/a/f;-><init>(Landroid/content/Context;Lio/casper/android/a/f$a;)V

    iput-object v0, p0, Lio/casper/android/i/h;->mAdapter:Lio/casper/android/a/f;

    .line 69
    iget-object v0, p0, Lio/casper/android/i/h;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/h;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v0, p0, Lio/casper/android/i/h;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/h;->mAdapter:Lio/casper/android/a/f;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 72
    iget-object v0, p0, Lio/casper/android/i/h;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    new-instance v0, Lio/casper/android/i/h$2;

    invoke-direct {v0, p0}, Lio/casper/android/i/h$2;-><init>(Lio/casper/android/i/h;)V

    iput-object v0, p0, Lio/casper/android/i/h;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 112
    iget-object v0, p0, Lio/casper/android/i/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    iget-object v2, p0, Lio/casper/android/i/h;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v2}, Lcom/imojiapp/imoji/sdk/ImojiApi;->getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 114
    return-object v1
.end method
