.class public Lio/casper/android/a/c/g;
.super Ljava/lang/Object;
.source "StoryViewHolder.java"


# instance fields
.field public extraText:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public menuImage:Landroid/widget/ImageButton;

.field public seenImage:Landroid/widget/ImageView;

.field public usernameText:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/casper/android/a/c/g;->view:Landroid/view/View;

    .line 20
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/g;->usernameText:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/g;->extraText:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/g;->imageView:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0c0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    .line 24
    const v0, 0x7f0c0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/g;->seenImage:Landroid/widget/ImageView;

    .line 25
    return-void
.end method
