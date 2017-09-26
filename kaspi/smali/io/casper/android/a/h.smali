.class public Lio/casper/android/a/h;
.super Landroid/widget/BaseAdapter;
.source "LocalEmojiGridAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

.field private mPicasso:Lcom/squareup/picasso/Picasso;

.field private mStickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/i/k$a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/a/h;->mStickers:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lio/casper/android/a/h;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lio/casper/android/a/h;->mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

    .line 31
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 33
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/h;)Lio/casper/android/i/k$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/a/h;->mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/h;->mStickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/casper/android/a/h;->mStickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    invoke-virtual {p0}, Lio/casper/android/a/h;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lio/casper/android/a/h;->mStickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {p0}, Lio/casper/android/a/h;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/a/h;->mStickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lio/casper/android/a/h;->a(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/SquareImageView;

    .line 57
    invoke-virtual {p0, p1}, Lio/casper/android/a/h;->a(I)Ljava/io/File;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lio/casper/android/a/h;->mPicasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 60
    new-instance v2, Lio/casper/android/a/h$1;

    invoke-direct {v2, p0, v1}, Lio/casper/android/a/h$1;-><init>(Lio/casper/android/a/h;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lio/casper/android/ui/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v0
.end method
