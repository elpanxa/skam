.class public Lio/casper/android/a/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatMessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mFromText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mMessageText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTimeText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    iput-object p1, p0, Lio/casper/android/a/a$a;->mView:Landroid/view/View;

    .line 58
    const v0, 0x7f0c010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/a$a;->mFromText:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/a$a;->mMessageText:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/a$a;->mImageView:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0c009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/a/a$a;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/casper/android/a/a$a;->mFromText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/casper/android/a/a$a;->mMessageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/casper/android/a/a$a;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/casper/android/a/a$a;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method
