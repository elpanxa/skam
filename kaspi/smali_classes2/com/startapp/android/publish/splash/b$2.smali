.class Lcom/startapp/android/publish/splash/b$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/splash/b;
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
    .line 183
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->d(Lcom/startapp/android/publish/splash/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->e(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Displaying Splash ad"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->e(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/b$a;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/splash/b$2$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/splash/b$2$1;-><init>(Lcom/startapp/android/publish/splash/b$2;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/b$a;->showAd(Lcom/startapp/android/publish/AdDisplayListener;)Z

    .line 209
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->g(Lcom/startapp/android/publish/splash/b;)V

    .line 210
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->h(Lcom/startapp/android/publish/splash/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 213
    :cond_0
    return-void
.end method
