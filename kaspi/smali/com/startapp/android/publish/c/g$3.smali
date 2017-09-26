.class Lcom/startapp/android/publish/c/g$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->R()Ljava/lang/Runnable;
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
    .line 563
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 566
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->r(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/startapp/android/publish/c/g;->d(Lcom/startapp/android/publish/c/g;Z)Z

    .line 567
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->s(Lcom/startapp/android/publish/c/g;)V

    .line 568
    iget-object v1, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoSoundUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapp/android/publish/video/d;

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->r(Lcom/startapp/android/publish/c/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/startapp/android/publish/video/d$a;->b:Lcom/startapp/android/publish/video/d$a;

    :goto_1
    iget-object v5, p0, Lcom/startapp/android/publish/c/g$3;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v5}, Lcom/startapp/android/publish/c/g;->h(Lcom/startapp/android/publish/c/g;)I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lcom/startapp/android/publish/video/d;-><init>(Ljava/lang/String;Lcom/startapp/android/publish/video/d$a;I)V

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V

    .line 570
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :cond_1
    sget-object v0, Lcom/startapp/android/publish/video/d$a;->a:Lcom/startapp/android/publish/video/d$a;

    goto :goto_1
.end method
