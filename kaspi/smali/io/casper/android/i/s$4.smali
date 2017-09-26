.class Lio/casper/android/i/s$4;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/s;


# direct methods
.method constructor <init>(Lio/casper/android/i/s;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->e(Lio/casper/android/i/s;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->g(Lio/casper/android/i/s;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v1}, Lio/casper/android/i/s;->f(Lio/casper/android/i/s;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 329
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->e(Lio/casper/android/i/s;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->g(Lio/casper/android/i/s;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/s$4;->this$0:Lio/casper/android/i/s;

    invoke-static {v1}, Lio/casper/android/i/s;->f(Lio/casper/android/i/s;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 323
    return-void
.end method
