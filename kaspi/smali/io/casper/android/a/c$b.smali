.class public Lio/casper/android/a/c$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FontsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private mDownloadButton:Landroid/widget/ImageButton;

.field private mHoldForDefaultText:Landroid/widget/TextView;

.field private mSampleText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    iput-object p1, p0, Lio/casper/android/a/c$b;->mView:Landroid/view/View;

    .line 58
    const v0, 0x7f0c010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c$b;->mSampleText:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c$b;->mHoldForDefaultText:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/a/c$b;->mDownloadButton:Landroid/widget/ImageButton;

    .line 61
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/c$b;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/casper/android/a/c$b;->mDownloadButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/c$b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/casper/android/a/c$b;->mSampleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/c$b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/casper/android/a/c$b;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/a/c$b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/casper/android/a/c$b;->mHoldForDefaultText:Landroid/widget/TextView;

    return-object v0
.end method
