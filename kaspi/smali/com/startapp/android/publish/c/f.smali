.class public Lcom/startapp/android/publish/c/f;
.super Lcom/startapp/android/publish/c/b;
.source "StartAppSDK"


# instance fields
.field private c:Lcom/startapp/android/publish/splash/SplashConfig;

.field private d:Lcom/startapp/android/publish/splash/b;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/startapp/android/publish/c/b;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/c/f;->c:Lcom/startapp/android/publish/splash/SplashConfig;

    .line 19
    iput-boolean v1, p0, Lcom/startapp/android/publish/c/f;->e:Z

    .line 20
    iput-boolean v1, p0, Lcom/startapp/android/publish/c/f;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 24
    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SplashConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/splash/SplashConfig;

    iput-object v0, p0, Lcom/startapp/android/publish/c/f;->c:Lcom/startapp/android/publish/splash/SplashConfig;

    .line 29
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 33
    const-string v2, "SplashMode"

    const/4 v3, 0x3

    const-string v4, "onKeyDown"

    invoke-static {v2, v3, v4}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-boolean v2, p0, Lcom/startapp/android/publish/c/f;->e:Z

    if-eqz v2, :cond_2

    .line 35
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 36
    iget-boolean v2, p0, Lcom/startapp/android/publish/c/f;->f:Z

    if-nez v2, :cond_2

    .line 37
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/f;->f:Z

    .line 38
    iget-object v2, p0, Lcom/startapp/android/publish/c/f;->d:Lcom/startapp/android/publish/splash/b;

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/b;->b()V

    .line 40
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Test Mode"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    .line 45
    iget-boolean v2, p0, Lcom/startapp/android/publish/c/f;->f:Z

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onPause"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/c/f;->d:Lcom/startapp/android/publish/splash/b;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/c/f;->d:Lcom/startapp/android/publish/splash/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/b;->a()V

    .line 65
    :cond_0
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    .line 69
    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onResume"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/c/f;->c:Lcom/startapp/android/publish/splash/SplashConfig;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AdPreference"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdPreferences;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->a()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "testMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/c/f;->e:Z

    .line 76
    new-instance v1, Lcom/startapp/android/publish/splash/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/f;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/c/f;->c:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/startapp/android/publish/splash/b;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;)V

    iput-object v1, p0, Lcom/startapp/android/publish/c/f;->d:Lcom/startapp/android/publish/splash/b;

    .line 77
    iget-object v0, p0, Lcom/startapp/android/publish/c/f;->d:Lcom/startapp/android/publish/splash/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/b;->a(Landroid/os/Bundle;)V

    .line 79
    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    return-void
.end method
