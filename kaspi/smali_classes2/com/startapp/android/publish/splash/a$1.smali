.class Lcom/startapp/android/publish/splash/a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/e/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/splash/a;->a(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/startapp/android/publish/b/b;

.field final synthetic c:Lcom/startapp/android/publish/splash/a;

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/splash/a;Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/startapp/android/publish/splash/a$1;->c:Lcom/startapp/android/publish/splash/a;

    iput-object p2, p0, Lcom/startapp/android/publish/splash/a$1;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/startapp/android/publish/splash/a$1;->b:Lcom/startapp/android/publish/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/startapp/android/publish/splash/a$1$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/splash/a$1$1;-><init>(Lcom/startapp/android/publish/splash/a$1;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a$1;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onFailedLoadingMeta()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "MetaData failed to receive - proceeding with old MetaData"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a$1;->c:Lcom/startapp/android/publish/splash/a;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/a;->b(Lcom/startapp/android/publish/splash/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/splash/a$1;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public onFinishLoadingMeta()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "MetaData received"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a$1;->c:Lcom/startapp/android/publish/splash/a;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/a;->b(Lcom/startapp/android/publish/splash/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/splash/a$1;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
