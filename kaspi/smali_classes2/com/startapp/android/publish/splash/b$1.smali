.class Lcom/startapp/android/publish/splash/b$1;
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
    .line 72
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$1;->a:Lcom/startapp/android/publish/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$1;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->a(Lcom/startapp/android/publish/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$1;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->b(Lcom/startapp/android/publish/splash/b;)V

    .line 81
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$1;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->c(Lcom/startapp/android/publish/splash/b;)V

    .line 83
    :cond_0
    return-void
.end method
