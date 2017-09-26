.class public Lio/casper/android/a/i;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UpdatesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSettingsManager:Lio/casper/android/l/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/i;->mDataSet:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lio/casper/android/a/i;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/a/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/i;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 65
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/a/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/i;->mRoutingManager:Lio/casper/android/l/p;

    .line 66
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/a/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/a/i;->mSettingsManager:Lio/casper/android/l/r;

    .line 68
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/i;)Lio/casper/android/l/r;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/a/i;->mSettingsManager:Lio/casper/android/l/r;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/a/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/i;)Lio/casper/android/l/k;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/a/i;->mInternalCacheManager:Lio/casper/android/l/k;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/i;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/a/i;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/i$a;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    new-instance v1, Lio/casper/android/a/i$a;

    invoke-direct {v1, v0}, Lio/casper/android/a/i$a;-><init>(Landroid/view/View;)V

    .line 75
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lio/casper/android/a/i;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-virtual {p0}, Lio/casper/android/a/i;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method public a(Lio/casper/android/a/i$a;I)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lio/casper/android/a/i;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/d;

    .line 83
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/d;->c()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {p1}, Lio/casper/android/a/i$a;->a(Lio/casper/android/a/i$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {p1}, Lio/casper/android/a/i$a;->b(Lio/casper/android/a/i$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 88
    invoke-static {p1}, Lio/casper/android/a/i$a;->b(Lio/casper/android/a/i$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/d;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/casper/android/a/i;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v2}, Lio/casper/android/l/r;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    invoke-static {p1}, Lio/casper/android/a/i$a;->c(Lio/casper/android/a/i$a;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 96
    :goto_0
    invoke-static {p1}, Lio/casper/android/a/i$a;->c(Lio/casper/android/a/i$a;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lio/casper/android/a/i$1;

    invoke-direct {v3, p0, v0, v1}, Lio/casper/android/a/i$1;-><init>(Lio/casper/android/a/i;Lio/casper/android/c/b/b/a/d;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void

    .line 93
    :cond_1
    invoke-static {p1}, Lio/casper/android/a/i$a;->c(Lio/casper/android/a/i$a;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public a(Lio/casper/android/c/b/b/a/d;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lio/casper/android/a/i;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lio/casper/android/a/i;->notifyDataSetChanged()V

    .line 186
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/casper/android/a/i;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lio/casper/android/a/i$a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/i;->a(Lio/casper/android/a/i$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/i;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/i$a;

    move-result-object v0

    return-object v0
.end method
