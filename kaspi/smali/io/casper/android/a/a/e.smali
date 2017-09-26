.class public Lio/casper/android/a/a/e;
.super Lio/casper/android/a/a/a/a;
.source "SavedSnapsAdapter.java"


# instance fields
.field private mPicasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 50
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0c0104

    const v3, 0x7f0c0103

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lio/casper/android/a/a/e;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 69
    iget-object v4, p0, Lio/casper/android/a/a/e;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 71
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v1, Lio/casper/android/a/a/e$1;

    invoke-direct {v1, p0, v2, v0}, Lio/casper/android/a/a/e$1;-><init>(Lio/casper/android/a/a/e;Landroid/util/Pair;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object p2
.end method
