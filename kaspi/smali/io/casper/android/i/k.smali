.class public Lio/casper/android/i/k;
.super Landroid/support/v4/app/Fragment;
.source "LocalEmojiFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/i/k$a;
    }
.end annotation


# instance fields
.field private mAdapter:Lio/casper/android/a/h;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mLocalPack:Ljava/io/File;

.field private mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

.field private mStickerManager:Lio/casper/android/l/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/casper/android/i/k;->setRetainInstance(Z)V

    .line 31
    return-void
.end method

.method public static a(Ljava/io/File;Lio/casper/android/i/k$a;)Lio/casper/android/i/k;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lio/casper/android/i/k;

    invoke-direct {v0}, Lio/casper/android/i/k;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Lio/casper/android/i/k;->a(Ljava/io/File;)V

    .line 66
    invoke-virtual {v0, p1}, Lio/casper/android/i/k;->a(Lio/casper/android/i/k$a;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/i/k$a;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/casper/android/i/k;->mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

    .line 61
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lio/casper/android/i/k;->mLocalPack:Ljava/io/File;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lio/casper/android/i/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/i/k;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lio/casper/android/l/v;

    iget-object v1, p0, Lio/casper/android/i/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/k;->mStickerManager:Lio/casper/android/l/v;

    .line 39
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    const v0, 0x7f0c00fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lio/casper/android/i/k;->mGridView:Landroid/widget/GridView;

    .line 43
    new-instance v0, Lio/casper/android/a/h;

    iget-object v2, p0, Lio/casper/android/i/k;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/casper/android/i/k;->mLocalStickerSelectedListener:Lio/casper/android/i/k$a;

    invoke-direct {v0, v2, v3}, Lio/casper/android/a/h;-><init>(Landroid/content/Context;Lio/casper/android/i/k$a;)V

    iput-object v0, p0, Lio/casper/android/i/k;->mAdapter:Lio/casper/android/a/h;

    .line 44
    iget-object v0, p0, Lio/casper/android/i/k;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lio/casper/android/i/k;->mAdapter:Lio/casper/android/a/h;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v0, p0, Lio/casper/android/i/k;->mGridView:Landroid/widget/GridView;

    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lio/casper/android/i/k;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lio/casper/android/util/l;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 48
    iget-object v0, p0, Lio/casper/android/i/k;->mAdapter:Lio/casper/android/a/h;

    invoke-virtual {v0}, Lio/casper/android/a/h;->a()V

    .line 49
    iget-object v0, p0, Lio/casper/android/i/k;->mAdapter:Lio/casper/android/a/h;

    iget-object v2, p0, Lio/casper/android/i/k;->mStickerManager:Lio/casper/android/l/v;

    iget-object v3, p0, Lio/casper/android/i/k;->mLocalPack:Ljava/io/File;

    invoke-virtual {v2, v3}, Lio/casper/android/l/v;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/casper/android/a/h;->a(Ljava/util/List;)V

    .line 51
    return-object v1
.end method
