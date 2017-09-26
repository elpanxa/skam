.class public Lio/casper/android/i/a/a;
.super Landroid/support/v4/app/Fragment;
.source "FilterFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterFile:Ljava/io/File;

.field private mPicasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    return-void
.end method

.method public static b(Ljava/io/File;)Lio/casper/android/i/a/a;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lio/casper/android/i/a/a;

    invoke-direct {v0}, Lio/casper/android/i/a/a;-><init>()V

    .line 33
    invoke-virtual {v0, p0}, Lio/casper/android/i/a/a;->a(Ljava/io/File;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lio/casper/android/i/a/a;->mFilterFile:Ljava/io/File;

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lio/casper/android/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a/a;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lio/casper/android/CasperApplication;->e()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/a/a;->mPicasso:Lcom/squareup/picasso/Picasso;

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/casper/android/i/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    iget-object v1, p0, Lio/casper/android/i/a/a;->mFilterFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lio/casper/android/i/a/a;->mPicasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lio/casper/android/i/a/a;->mFilterFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 52
    :cond_0
    return-object v0
.end method
