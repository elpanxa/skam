.class public Lio/casper/android/a/a/i;
.super Lio/casper/android/a/a/a/a;
.source "UsernameSavedSnapsAdapter.java"


# instance fields
.field private mDisplay:Ljava/lang/String;

.field private mPicasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lio/casper/android/a/a/i;->mDisplay:Ljava/lang/String;

    .line 32
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/a/a/i;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 34
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/a/a/i;->mDisplay:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v0, p0, Lio/casper/android/a/a/i;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Ljava/io/File;

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0c0103

    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Lio/casper/android/a/a/i;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/i;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 62
    iget-object v2, p0, Lio/casper/android/a/a/i;->mPicasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 64
    new-instance v0, Lio/casper/android/a/a/i$1;

    invoke-direct {v0, p0, p1}, Lio/casper/android/a/a/i$1;-><init>(Lio/casper/android/a/a/i;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object p2
.end method
