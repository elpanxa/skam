.class Lcom/startapp/android/publish/b/e$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/video/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/b/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/video/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/video/c$a;

.field final synthetic b:Lcom/startapp/android/publish/b/d;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/startapp/android/publish/b/e;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/b/e;Lcom/startapp/android/publish/video/c$a;Lcom/startapp/android/publish/b/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/startapp/android/publish/b/e$1;->d:Lcom/startapp/android/publish/b/e;

    iput-object p2, p0, Lcom/startapp/android/publish/b/e$1;->a:Lcom/startapp/android/publish/video/c$a;

    iput-object p3, p0, Lcom/startapp/android/publish/b/e$1;->b:Lcom/startapp/android/publish/b/d;

    iput-object p4, p0, Lcom/startapp/android/publish/b/e$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->a:Lcom/startapp/android/publish/video/c$a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->a:Lcom/startapp/android/publish/video/c$a;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/video/c$a;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->b:Lcom/startapp/android/publish/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapp/android/publish/b/d;->a(J)V

    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->b:Lcom/startapp/android/publish/b/d;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/b/d;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->d:Lcom/startapp/android/publish/b/e;

    invoke-static {v0}, Lcom/startapp/android/publish/b/e;->a(Lcom/startapp/android/publish/b/e;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/e$1;->b:Lcom/startapp/android/publish/b/d;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/b/e$1;->d:Lcom/startapp/android/publish/b/e;

    iget-object v1, p0, Lcom/startapp/android/publish/b/e$1;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/b/e;->a(Lcom/startapp/android/publish/b/e;Landroid/content/Context;)V

    .line 61
    const-string v0, "VideoAdCacheManager"

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/b/e$1;->b:Lcom/startapp/android/publish/b/d;

    invoke-virtual {v3}, Lcom/startapp/android/publish/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to cachedVideoAds. Size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/b/e$1;->d:Lcom/startapp/android/publish/b/e;

    invoke-static {v3}, Lcom/startapp/android/publish/b/e;->a(Lcom/startapp/android/publish/b/e;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method
