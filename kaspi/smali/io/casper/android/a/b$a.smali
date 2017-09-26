.class public Lio/casper/android/a/b$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ConversationSnapsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mExtraText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUsernameText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    iput-object p1, p0, Lio/casper/android/a/b$a;->mView:Landroid/view/View;

    .line 64
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/b$a;->mUsernameText:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/b$a;->mExtraText:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/b$a;->mImageView:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0c009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/a/b$a;->mProgressBar:Landroid/widget/ProgressBar;

    .line 68
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/a/b$a;->mUsernameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/b$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/a/b$a;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/b$a;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/a/b$a;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/a/b$a;->mExtraText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/a/b$a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lio/casper/android/a/b$a;->mView:Landroid/view/View;

    return-object v0
.end method
