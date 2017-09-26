.class public Lio/casper/android/a/c/d;
.super Ljava/lang/Object;
.source "HeaderViewHolder.java"


# instance fields
.field public letter:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/casper/android/a/c/d;->view:Landroid/view/View;

    .line 14
    const v0, 0x7f0c0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/d;->letter:Landroid/widget/TextView;

    .line 15
    return-void
.end method
