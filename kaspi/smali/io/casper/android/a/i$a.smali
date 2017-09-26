.class public Lio/casper/android/a/i$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UpdatesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mNameText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    iput-object p1, p0, Lio/casper/android/a/i$a;->mView:Landroid/view/View;

    .line 53
    const v0, 0x7f0c0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/i$a;->mNameText:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/i$a;->mDescriptionText:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/casper/android/a/i$a;->mDownloadButton:Landroid/widget/Button;

    .line 57
    return-void
.end method

.method static synthetic a(Lio/casper/android/a/i$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/i$a;->mNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/a/i$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/i$a;->mDescriptionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/a/i$a;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/a/i$a;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method
