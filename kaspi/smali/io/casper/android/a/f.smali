.class public Lio/casper/android/a/f;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImojiCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/a/f$a;,
        Lio/casper/android/a/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lio/casper/android/a/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategoryCallback:Lio/casper/android/a/f$a;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/a/f$a;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/f;->mDataSet:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lio/casper/android/a/f;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lio/casper/android/a/f;->mCategoryCallback:Lio/casper/android/a/f$a;

    .line 44
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/f;)Lio/casper/android/a/f$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/a/f;->mCategoryCallback:Lio/casper/android/a/f$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lio/casper/android/a/f$b;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    new-instance v1, Lio/casper/android/a/f$b;

    invoke-direct {v1, v0}, Lio/casper/android/a/f$b;-><init>(Landroid/view/View;)V

    .line 51
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/casper/android/a/f;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    invoke-virtual {p0}, Lio/casper/android/a/f;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public a(Lio/casper/android/a/f$b;I)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lio/casper/android/a/f;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiCategory;

    .line 59
    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiCategory;->getImoji()Lcom/imojiapp/imoji/sdk/Imoji;

    move-result-object v1

    .line 61
    invoke-static {p1}, Lio/casper/android/a/f$b;->a(Lio/casper/android/a/f$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/imojiapp/imoji/sdk/ImojiCategory;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    sget-object v3, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v4, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {v1, v3, v4}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-static {p1}, Lio/casper/android/a/f$b;->b(Lio/casper/android/a/f$b;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 66
    invoke-static {p1}, Lio/casper/android/a/f$b;->c(Lio/casper/android/a/f$b;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/casper/android/a/f$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/f$1;-><init>(Lio/casper/android/a/f;Lcom/imojiapp/imoji/sdk/ImojiCategory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lio/casper/android/a/f;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual {p0}, Lio/casper/android/a/f;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/casper/android/a/f;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lio/casper/android/a/f$b;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/f;->a(Lio/casper/android/a/f$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/f;->a(Landroid/view/ViewGroup;I)Lio/casper/android/a/f$b;

    move-result-object v0

    return-object v0
.end method
