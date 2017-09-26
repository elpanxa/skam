.class Lio/casper/android/activity/SnapTagActivity$1;
.super Ljava/lang/Object;
.source "SnapTagActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapTagActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapTagActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapTagActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->a(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->c(Lio/casper/android/activity/SnapTagActivity;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapTagActivity;->b(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 72
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->a(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->c(Lio/casper/android/activity/SnapTagActivity;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity$1;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapTagActivity;->b(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 66
    return-void
.end method
