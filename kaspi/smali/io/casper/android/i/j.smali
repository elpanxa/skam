.class public Lio/casper/android/i/j;
.super Landroid/support/v4/app/Fragment;
.source "ImojiPickerFragment.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mAdapter:Lio/casper/android/a/f;

.field private mCallback:Lcom/imojiapp/imoji/sdk/Callback;

.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchText:Landroid/widget/EditText;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/j;->setRetainInstance(Z)V

    .line 49
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/j;)Lio/casper/android/a/f;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/j;->mAdapter:Lio/casper/android/a/f;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/j;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/j;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/i/j;)Lcom/imojiapp/imoji/sdk/Callback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/i/j;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v0, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 201
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lio/casper/android/util/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 191
    invoke-static {v0}, Lio/casper/android/i/i;->c(Ljava/lang/String;)Lio/casper/android/i/i;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0c008d

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lio/casper/android/i/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/j;->mAdManager:Lio/casper/android/l/a;

    .line 57
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/j;->mRoutingManager:Lio/casper/android/l/p;

    .line 59
    const v0, 0x7f030040

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    const v0, 0x7f0c008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/i/j;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 62
    const v0, 0x7f0c00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0c00d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/i/j;->mSearchButton:Landroid/widget/ImageButton;

    .line 65
    iget-object v2, p0, Lio/casper/android/i/j;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 79
    iget-object v0, p0, Lio/casper/android/i/j;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Lio/casper/android/i/j$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/j$1;-><init>(Lio/casper/android/i/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    iget-object v0, p0, Lio/casper/android/i/j;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v2, Lio/casper/android/i/j$2;

    invoke-direct {v2, p0}, Lio/casper/android/i/j$2;-><init>(Lio/casper/android/i/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lio/casper/android/i/j;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0701bb

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 98
    iget-object v0, p0, Lio/casper/android/i/j;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 99
    iget-object v0, p0, Lio/casper/android/i/j;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lio/casper/android/i/j$3;

    invoke-direct {v2, p0}, Lio/casper/android/i/j$3;-><init>(Lio/casper/android/i/j;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/j;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 107
    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/i/j;->mProgressBar:Landroid/widget/ProgressBar;

    .line 109
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/j;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 111
    new-instance v0, Lio/casper/android/a/f;

    iget-object v2, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    new-instance v3, Lio/casper/android/i/j$4;

    invoke-direct {v3, p0}, Lio/casper/android/i/j$4;-><init>(Lio/casper/android/i/j;)V

    invoke-direct {v0, v2, v3}, Lio/casper/android/a/f;-><init>(Landroid/content/Context;Lio/casper/android/a/f$a;)V

    iput-object v0, p0, Lio/casper/android/i/j;->mAdapter:Lio/casper/android/a/f;

    .line 128
    iget-object v0, p0, Lio/casper/android/i/j;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/j;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v0, p0, Lio/casper/android/i/j;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/j;->mAdapter:Lio/casper/android/a/f;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 131
    iget-object v0, p0, Lio/casper/android/i/j;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    new-instance v0, Lio/casper/android/i/j$5;

    invoke-direct {v0, p0}, Lio/casper/android/i/j$5;-><init>(Lio/casper/android/i/j;)V

    iput-object v0, p0, Lio/casper/android/i/j;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 171
    iget-object v0, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    iget-object v2, p0, Lio/casper/android/i/j;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {v0, v2}, Lcom/imojiapp/imoji/sdk/ImojiApi;->getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 173
    new-instance v2, Lio/casper/android/l/a;

    iget-object v0, p0, Lio/casper/android/i/j;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 176
    return-object v1
.end method
