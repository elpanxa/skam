.class Lcom/startapp/android/publish/splash/b$2$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/splash/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/splash/b$2;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/splash/b$2;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b$2$1;->a:Lcom/startapp/android/publish/splash/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/Ad;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2$1;->a:Lcom/startapp/android/publish/splash/b$2;

    iget-object v0, v0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/a;->c()V

    .line 201
    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/Ad;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b$2$1;->a:Lcom/startapp/android/publish/splash/b$2;

    iget-object v0, v0, Lcom/startapp/android/publish/splash/b$2;->a:Lcom/startapp/android/publish/splash/b;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/b;->f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/a;->b()V

    .line 197
    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
