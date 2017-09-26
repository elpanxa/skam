.class public Lcom/startapp/android/publish/OverlayActivity;
.super Landroid/app/Activity;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/c/b;

.field private b:Z

.field private c:I

.field private d:Landroid/os/Bundle;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->e:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->getByIndex(I)Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/c/b;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    .line 66
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/OverlayActivity;->overridePendingTransition(II)V

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 163
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->m()V

    .line 157
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/startapp/android/publish/OverlayActivity;->a()V

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    iget-object v1, p0, Lcom/startapp/android/publish/OverlayActivity;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/c/b;->a(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->r()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    .line 78
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1, v1}, Lcom/startapp/android/publish/OverlayActivity;->overridePendingTransition(II)V

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "videoAd"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 35
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/OverlayActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fullscreen"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 41
    :cond_1
    const-string v3, "AppWallActivity"

    const/4 v4, 0x2

    const-string v5, "AppWallActivity::onCreate"

    invoke-static {v3, v4, v5}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    .line 44
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 47
    :cond_2
    if-eqz p1, :cond_3

    .line 48
    const-string v2, "activityLockedOrientation"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "orientation"

    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/startapp/android/publish/OverlayActivity;->c:I

    .line 52
    invoke-virtual {p0}, Lcom/startapp/android/publish/OverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/startapp/android/publish/OverlayActivity;->c:I

    if-eq v2, v3, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    .line 53
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_5

    .line 55
    invoke-direct {p0}, Lcom/startapp/android/publish/OverlayActivity;->a()V

    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/c/b;->a(Landroid/os/Bundle;)V

    .line 60
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 52
    goto :goto_0

    .line 58
    :cond_5
    iput-object p1, p0, Lcom/startapp/android/publish/OverlayActivity;->d:Landroid/os/Bundle;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onDestroy"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->s()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/c/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onPause"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->p()V

    .line 96
    invoke-static {}, Lcom/startapp/android/publish/h/u;->b()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onResume"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->e:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->c()V

    .line 118
    :cond_0
    iget v0, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 119
    iget v0, p0, Lcom/startapp/android/publish/OverlayActivity;->c:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;IZ)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    .line 124
    :goto_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->r()V

    .line 127
    :cond_1
    return-void

    .line 121
    :cond_2
    iget v0, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/OverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 102
    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onSaveInstanceState"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/c/b;->b(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "activityLockedOrientation"

    iget v1, p0, Lcom/startapp/android/publish/OverlayActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onStop"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 134
    iget-boolean v0, p0, Lcom/startapp/android/publish/OverlayActivity;->b:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/startapp/android/publish/OverlayActivity;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->q()V

    .line 137
    :cond_0
    return-void
.end method
