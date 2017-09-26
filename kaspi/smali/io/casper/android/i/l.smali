.class public Lio/casper/android/i/l;
.super Landroid/support/v4/app/Fragment;
.source "MyStoriesFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/e;

.field private mContainer:Lio/casper/android/m/a;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lio/casper/android/i/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/l;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lio/casper/android/i/l;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lio/casper/android/m/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/m/a;

    iput-object v0, p0, Lio/casper/android/i/l;->mContainer:Lio/casper/android/m/a;

    .line 44
    const v0, 0x7f030043

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/l;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 47
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/l;->mEmptyText:Landroid/widget/TextView;

    .line 49
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/l;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/l;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 50
    iget-object v0, p0, Lio/casper/android/i/l;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 51
    iget-object v0, p0, Lio/casper/android/i/l;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lio/casper/android/ui/c;

    invoke-virtual {p0}, Lio/casper/android/i/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lio/casper/android/ui/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 52
    iget-object v0, p0, Lio/casper/android/i/l;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/l;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    new-instance v0, Lio/casper/android/a/e;

    iget-object v2, p0, Lio/casper/android/i/l;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/l;->mAdapter:Lio/casper/android/a/e;

    .line 55
    iget-object v0, p0, Lio/casper/android/i/l;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/l;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object v0, p0, Lio/casper/android/i/l;->mContainer:Lio/casper/android/m/a;

    invoke-virtual {v0}, Lio/casper/android/m/a;->a()Ljava/util/List;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lio/casper/android/i/l;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v2}, Lio/casper/android/a/e;->a()V

    .line 59
    iget-object v2, p0, Lio/casper/android/i/l;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v2, v0}, Lio/casper/android/a/e;->a(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lio/casper/android/i/l;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v0}, Lio/casper/android/a/e;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/casper/android/i/l;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_0
    return-object v1

    .line 64
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/l;->mEmptyText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
