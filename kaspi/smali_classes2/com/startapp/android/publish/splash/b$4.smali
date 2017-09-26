.class Lcom/startapp/android/publish/splash/b$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/splash/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/splash/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/splash/b;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v1}, Lcom/startapp/android/publish/splash/b;->i(Lcom/startapp/android/publish/splash/b;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v2}, Lcom/startapp/android/publish/splash/b;->j(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/splash/a;->b(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0, v3}, Lcom/startapp/android/publish/splash/b;->a(Lcom/startapp/android/publish/splash/b;Lcom/startapp/android/publish/splash/b$a;)Lcom/startapp/android/publish/splash/b$a;

    .line 253
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$4;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0, v3}, Lcom/startapp/android/publish/splash/b;->a(Lcom/startapp/android/publish/splash/b;Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/b/b;

    .line 255
    :cond_0
    return-void
.end method
