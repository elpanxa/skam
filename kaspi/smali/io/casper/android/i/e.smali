.class public Lio/casper/android/i/e;
.super Landroid/support/v4/app/Fragment;
.source "FriendStoriesFragment.java"


# instance fields
.field private mAdapter:Lio/casper/android/a/e;

.field private mContainer:Lio/casper/android/n/a/c/b/j;

.field private mContext:Landroid/content/Context;

.field private mEmptyText:Landroid/widget/TextView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 83
    const-string v3, "FriendStoriesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save Container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lio/casper/android/i/e;->mContext:Landroid/content/Context;

    const v2, 0x7f0700d7

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_2
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v1

    .line 98
    if-nez v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 101
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/k;

    .line 102
    const-string v3, "FriendStoriesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mark Container Viewed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 104
    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lio/casper/android/i/e;->mContext:Landroid/content/Context;

    const v2, 0x7f0700d7

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Lio/casper/android/i/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/e;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lio/casper/android/i/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lio/casper/android/n/a/c/b/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/j;

    iput-object v0, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    .line 46
    const v0, 0x7f03003a

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lio/casper/android/i/e;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 49
    const v0, 0x7f0c009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/i/e;->mEmptyText:Landroid/widget/TextView;

    .line 51
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lio/casper/android/i/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/e;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 52
    iget-object v0, p0, Lio/casper/android/i/e;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 53
    iget-object v0, p0, Lio/casper/android/i/e;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lio/casper/android/ui/c;

    invoke-virtual {p0}, Lio/casper/android/i/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lio/casper/android/ui/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    iget-object v0, p0, Lio/casper/android/i/e;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/e;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    new-instance v0, Lio/casper/android/a/e;

    iget-object v2, p0, Lio/casper/android/i/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/casper/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/e;->mAdapter:Lio/casper/android/a/e;

    .line 57
    iget-object v0, p0, Lio/casper/android/i/e;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/casper/android/i/e;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object v0, p0, Lio/casper/android/i/e;->mContainer:Lio/casper/android/n/a/c/b/j;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lio/casper/android/i/e;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v2}, Lio/casper/android/a/e;->a()V

    .line 61
    iget-object v2, p0, Lio/casper/android/i/e;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v2, v0}, Lio/casper/android/a/e;->a(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lio/casper/android/i/e;->mAdapter:Lio/casper/android/a/e;

    invoke-virtual {v0}, Lio/casper/android/a/e;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/casper/android/i/e;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_0
    return-object v1

    .line 66
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/e;->mEmptyText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
