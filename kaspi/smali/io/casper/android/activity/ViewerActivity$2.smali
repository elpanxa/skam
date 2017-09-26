.class Lio/casper/android/activity/ViewerActivity$2;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ViewerActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->b(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->d(Lio/casper/android/activity/ViewerActivity;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v1}, Lio/casper/android/activity/ViewerActivity;->c(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 239
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->b(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->d(Lio/casper/android/activity/ViewerActivity;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity$2;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v1}, Lio/casper/android/activity/ViewerActivity;->c(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 233
    return-void
.end method
