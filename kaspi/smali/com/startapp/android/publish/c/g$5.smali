.class Lcom/startapp/android/publish/c/g$5;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->T()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->t(Lcom/startapp/android/publish/c/g;)I

    .line 589
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->e(Lcom/startapp/android/publish/c/g;Z)Z

    .line 596
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->u(Lcom/startapp/android/publish/c/g;)V

    .line 597
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->v(Lcom/startapp/android/publish/c/g;)V

    .line 598
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$5;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 600
    return-void
.end method
