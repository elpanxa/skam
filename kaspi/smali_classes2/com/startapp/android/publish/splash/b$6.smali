.class Lcom/startapp/android/publish/splash/b$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/splash/b;->g()V
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
    .line 272
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$6;->a:Lcom/startapp/android/publish/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$6;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b$6;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v1}, Lcom/startapp/android/publish/splash/b;->e(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/a;->a(Lcom/startapp/android/publish/StartAppAd;)V

    .line 276
    return-void
.end method
