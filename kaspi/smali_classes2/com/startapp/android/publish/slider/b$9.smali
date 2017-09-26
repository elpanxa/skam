.class Lcom/startapp/android/publish/slider/b$9;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/slider/sliding/DrawerLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$9;->a:Lcom/startapp/android/publish/slider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$9;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->g(Lcom/startapp/android/publish/slider/b;)V

    .line 302
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$9;->a:Lcom/startapp/android/publish/slider/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/b;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 307
    iget-object v1, p0, Lcom/startapp/android/publish/slider/b$9;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v1}, Lcom/startapp/android/publish/slider/b;->c(Lcom/startapp/android/publish/slider/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 308
    return-void
.end method
