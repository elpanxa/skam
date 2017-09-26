.class public Lcom/startapp/android/publish/c/e;
.super Lcom/startapp/android/publish/c/c;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/startapp/android/publish/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/c;->a(Landroid/webkit/WebView;)V

    .line 15
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 18
    :cond_0
    return-void
.end method

.method protected b(Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/c/e$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/c/e$1;-><init>(Lcom/startapp/android/publish/c/e;Landroid/webkit/WebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->p()V

    .line 24
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/e;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 25
    return-void
.end method
