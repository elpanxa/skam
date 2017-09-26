.class public Lio/casper/android/a/g;
.super Landroid/widget/BaseAdapter;
.source "ImojiGridAdapter.java"


# static fields
.field private static final TYPE_IMOJI:I = 0x0

.field private static final TYPE_LOADING:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lio/casper/android/a/g;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/a/g;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lio/casper/android/a/g;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual {p0}, Lio/casper/android/a/g;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lio/casper/android/ui/f;

    invoke-direct {v0}, Lio/casper/android/ui/f;-><init>()V

    invoke-virtual {p0, v0}, Lio/casper/android/a/g;->a(Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    new-instance v1, Lio/casper/android/ui/f;

    invoke-direct {v1}, Lio/casper/android/ui/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lio/casper/android/a/g;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/a/g;->mImojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lio/casper/android/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    instance-of v0, v0, Lcom/imojiapp/imoji/sdk/Imoji;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lio/casper/android/a/g;->getItemViewType(I)I

    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/SquareImageView;

    .line 64
    invoke-virtual {p0, p1}, Lio/casper/android/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imojiapp/imoji/sdk/Imoji;

    .line 66
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    sget-object v3, Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;->Png:Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;

    sget-object v4, Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;->ImageSizeThumbnail:Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;

    invoke-virtual {v1, v3, v4}, Lcom/imojiapp/imoji/sdk/Imoji;->getImageUrl(Lcom/imojiapp/imoji/sdk/Imoji$ImageFormat;Lcom/imojiapp/imoji/sdk/Imoji$ImageSize;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 69
    new-instance v2, Lio/casper/android/a/g$1;

    invoke-direct {v2, p0, v1}, Lio/casper/android/a/g$1;-><init>(Lio/casper/android/a/g;Lcom/imojiapp/imoji/sdk/Imoji;)V

    invoke-virtual {v0, v2}, Lio/casper/android/ui/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
