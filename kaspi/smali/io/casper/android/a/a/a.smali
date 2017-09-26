.class public Lio/casper/android/a/a/a;
.super Lio/casper/android/a/a/a/a;
.source "AccountStatisticsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lio/casper/android/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/a/a/a;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 25
    if-nez p2, :cond_0

    .line 26
    iget-object v0, p0, Lio/casper/android/a/a/a;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    :cond_0
    const v0, 0x7f0c0107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0c0108

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0, p1}, Lio/casper/android/a/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/casper/android/a/b/a;

    .line 34
    invoke-virtual {v2}, Lio/casper/android/a/b/a;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 35
    invoke-virtual {v2}, Lio/casper/android/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object p2
.end method
