.class public Lio/casper/android/a/f$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImojiCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mNameText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lio/casper/android/a/f$b;->mView:Landroid/view/View;

    .line 35
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/f$b;->mImageView:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0c0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/f$b;->mNameText:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/f$b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/a/f$b;->mNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/f$b;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/a/f$b;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/f$b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/a/f$b;->mView:Landroid/view/View;

    return-object v0
.end method
