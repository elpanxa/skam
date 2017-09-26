.class public Lio/casper/android/a/c/f;
.super Ljava/lang/Object;
.source "SnapViewHolder.java"


# instance fields
.field public extraText:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public usernameText:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/casper/android/a/c/f;->view:Landroid/view/View;

    .line 17
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/f;->usernameText:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/f;->extraText:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/f;->imageView:Landroid/widget/ImageView;

    .line 20
    return-void
.end method
