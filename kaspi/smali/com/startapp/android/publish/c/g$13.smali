.class Lcom/startapp/android/publish/c/g$13;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;Z)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    iput-boolean p2, p0, Lcom/startapp/android/publish/c/g$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g$13;->a:Z

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;I)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->j(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->o(Lcom/startapp/android/publish/c/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 416
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    if-eq v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->p(Lcom/startapp/android/publish/c/g;)V

    .line 418
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    iget-object v0, v0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;->LAST_FRAME:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    if-ne v0, v1, :cond_4

    .line 423
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g$13;->a:Z

    if-eqz v0, :cond_1

    .line 444
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->q(Lcom/startapp/android/publish/c/g;)V

    .line 446
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    if-eq v0, v1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v1}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoPostRollImpressionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Ljava/lang/String;)V

    .line 449
    :cond_2
    return-void

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->n(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;->IMAGE:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    if-ne v0, v1, :cond_5

    .line 429
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->h(Lcom/startapp/android/publish/c/g;)I

    move-result v0

    .line 431
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/startapp/android/publish/c/g$13$1;

    invoke-direct {v2, p0, v0}, Lcom/startapp/android/publish/c/g$13$1;-><init>(Lcom/startapp/android/publish/c/g$13;I)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$13;->b:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/g;->m()V

    goto :goto_1
.end method
