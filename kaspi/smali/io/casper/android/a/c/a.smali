.class public Lio/casper/android/a/c/a;
.super Ljava/lang/Object;
.source "BackgroundUploadTaskViewHolder.java"


# instance fields
.field public cancelImage:Landroid/widget/ImageButton;

.field public extraText:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public retryImage:Landroid/widget/ImageButton;

.field public usernameText:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/casper/android/a/c/a;->view:Landroid/view/View;

    .line 22
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/a;->usernameText:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/a/c/a;->extraText:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/a/c/a;->imageView:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0c009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/casper/android/a/c/a;->progressBar:Landroid/widget/ProgressBar;

    .line 26
    const v0, 0x7f0c010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/a/c/a;->retryImage:Landroid/widget/ImageButton;

    .line 27
    const v0, 0x7f0c010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/a/c/a;->cancelImage:Landroid/widget/ImageButton;

    .line 28
    return-void
.end method
