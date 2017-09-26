.class Lcom/startapp/android/publish/h/u$a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/h/u$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/h/u$a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/h/u$a;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->a(Lcom/startapp/android/publish/h/u$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->b(Lcom/startapp/android/publish/h/u$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->c(Lcom/startapp/android/publish/h/u$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->d(Lcom/startapp/android/publish/h/u$a;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/d/b$a;->a:Lcom/startapp/android/publish/d/b$a;

    const-string v2, "Timeout - Page Finished"

    iget-object v3, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v3}, Lcom/startapp/android/publish/h/u$a;->e(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v4}, Lcom/startapp/android/publish/h/u$a;->f(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_1
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u$a;->a(Lcom/startapp/android/publish/h/u$a;Z)Z

    .line 714
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->d(Lcom/startapp/android/publish/h/u$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->c(Landroid/content/Context;)V

    .line 716
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->d(Lcom/startapp/android/publish/h/u$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v1}, Lcom/startapp/android/publish/h/u$a;->e(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v2}, Lcom/startapp/android/publish/h/u$a;->f(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->g(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->g(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 722
    :cond_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u$a;->d(Lcom/startapp/android/publish/h/u$a;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/d/b$a;->a:Lcom/startapp/android/publish/d/b$a;

    const-string v2, "Timeout"

    iget-object v3, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v3}, Lcom/startapp/android/publish/h/u$a;->e(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/h/u$a$1;->a:Lcom/startapp/android/publish/h/u$a;

    invoke-static {v4}, Lcom/startapp/android/publish/h/u$a;->f(Lcom/startapp/android/publish/h/u$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 702
    :catch_0
    move-exception v0

    goto :goto_0
.end method
