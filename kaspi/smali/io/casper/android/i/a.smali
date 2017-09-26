.class public Lio/casper/android/i/a;
.super Landroid/support/v4/app/Fragment;
.source "ConversationFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationFragment"


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field private mAdapter:Lio/casper/android/a/b;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lio/casper/android/n/a/c/b/f;

.field private mEmptyText:Landroid/widget/TextView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mSnapchatAccount:Lio/casper/android/e/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic a(Lio/casper/android/i/a;)Lio/casper/android/a/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/i/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/a;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/i/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/a;->a(Z)V

    .line 114
    new-instance v0, Lio/casper/android/n/a/b/f;

    iget-object v1, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/i/a;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lio/casper/android/i/a$2;

    invoke-direct {v1, p0, v0}, Lio/casper/android/i/a$2;-><init>(Lio/casper/android/i/a;Lio/casper/android/n/a/b/f;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/f;->a(Lio/casper/android/c/c/a/a;)V

    .line 159
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    iget-object v0, p0, Lio/casper/android/i/a;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    invoke-virtual {p0}, Lio/casper/android/i/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/a;->mAccountManager:Lio/casper/android/l/s;

    .line 57
    iget-object v0, p0, Lio/casper/android/i/a;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lio/casper/android/i/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    iput-object v0, p0, Lio/casper/android/i/a;->mConversation:Lio/casper/android/n/a/c/b/f;

    .line 60
    const v0, 0x7f030035

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0c00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/casper/android/i/a;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 63
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/a;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 64
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/a;->mEmptyText:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lio/casper/android/i/a;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v8, [I

    iget-object v3, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 68
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/a;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 69
    iget-object v0, p0, Lio/casper/android/i/a;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 70
    iget-object v0, p0, Lio/casper/android/i/a;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lio/casper/android/ui/c;

    invoke-virtual {p0}, Lio/casper/android/i/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lio/casper/android/ui/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object v0, p0, Lio/casper/android/i/a;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/a;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v0, p0, Lio/casper/android/i/a;->mRefreshView:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lio/casper/android/i/a$1;

    invoke-direct {v2, p0}, Lio/casper/android/i/a$1;-><init>(Lio/casper/android/i/a;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 80
    new-instance v0, Lio/casper/android/a/b;

    iget-object v2, p0, Lio/casper/android/i/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    .line 81
    iget-object v0, p0, Lio/casper/android/i/a;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object v0, p0, Lio/casper/android/i/a;->mConversation:Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->e()Lio/casper/android/n/a/c/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/g;->a()Ljava/util/List;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    invoke-virtual {v2}, Lio/casper/android/a/b;->a()V

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/w;

    .line 88
    const-string v3, "ConversationFragment"

    const-string v4, "Snap=%s"

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->t()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    iget-object v3, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    invoke-virtual {v3, v0}, Lio/casper/android/a/b;->a(Lio/casper/android/n/a/c/b/w;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/a;->mAdapter:Lio/casper/android/a/b;

    invoke-virtual {v0}, Lio/casper/android/a/b;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lio/casper/android/i/a;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_1
    return-object v1

    .line 103
    :cond_2
    iget-object v0, p0, Lio/casper/android/i/a;->mEmptyText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
