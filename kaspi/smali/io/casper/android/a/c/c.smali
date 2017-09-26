.class public Lio/casper/android/a/c/c;
.super Ljava/lang/Object;
.source "FriendViewHolder.java"


# instance fields
.field public displayText:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public menuButton:Landroid/widget/ImageView;

.field public usernameText:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/casper/android/a/c/c;->view:Landroid/view/View;

    .line 18
    const v0, 0x7f0c0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/c;->displayText:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/c;->usernameText:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/c;->imageView:Landroid/widget/ImageView;

    .line 21
    const v0, 0x7f0c0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/c;->menuButton:Landroid/widget/ImageView;

    .line 22
    return-void
.end method
