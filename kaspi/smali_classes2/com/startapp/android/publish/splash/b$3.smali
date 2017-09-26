.class Lcom/startapp/android/publish/splash/b$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


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
    .line 220
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$3;->a:Lcom/startapp/android/publish/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$3;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->e(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$3;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/a;->a()V

    .line 240
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$3;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b$3;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v1}, Lcom/startapp/android/publish/splash/b;->i(Lcom/startapp/android/publish/splash/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/a;->a(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
