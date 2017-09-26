.class public Lcom/startapp/android/publish/splash/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/splash/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/startapp/android/publish/splash/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/startapp/android/publish/splash/a;->b:Z

    .line 38
    iput-boolean v1, p0, Lcom/startapp/android/publish/splash/a;->c:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->d:Z

    .line 40
    iput-boolean v1, p0, Lcom/startapp/android/publish/splash/a;->e:Z

    .line 42
    iput-boolean v1, p0, Lcom/startapp/android/publish/splash/a;->f:Z

    .line 44
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->a:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 47
    iput-object p1, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/a;)Lcom/startapp/android/publish/splash/a$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    return-object v0
.end method

.method private a(Lcom/startapp/android/publish/e/p;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/startapp/android/publish/e/p;->onFinishLoadingMeta()V

    .line 92
    :goto_0
    monitor-exit v1

    .line 93
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/model/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/e/p;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/a;Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/splash/a;->c(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/startapp/android/publish/splash/a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/startapp/android/publish/splash/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->b:Z

    if-eqz v0, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->b:Lcom/startapp/android/publish/splash/a$a;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->d:Z

    .line 166
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->a:Lcom/startapp/android/publish/splash/a$a;

    if-eq v0, v1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/startapp/android/publish/splash/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    return-void
.end method

.method private c(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v1, v4}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/splash/a;->b(Ljava/lang/Runnable;)V

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v1, "Splash"

    const/4 v2, 0x4

    const-string v3, "Should not display splash ad"

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    iput-object v1, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 137
    if-eqz p2, :cond_1

    .line 138
    iget-object v1, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v2

    invoke-static {v2}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/e;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getSimpleReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 215
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Loading main activity"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->h()V

    .line 217
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 220
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->e:Z

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->e:Z

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.splashHidden"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Error receiving Ad"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/splash/a;->b(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public a(Lcom/startapp/android/publish/StartAppAd;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->c:Lcom/startapp/android/publish/splash/a$a;

    if-ne v0, v1, :cond_0

    .line 177
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Splash Ad Display Timeout"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/splash/a$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/splash/a$2;-><init>(Lcom/startapp/android/publish/splash/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.CloseAdActivityReply"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 192
    invoke-virtual {p1}, Lcom/startapp/android/publish/StartAppAd;->close()V

    .line 194
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Splash ad received"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->a:Lcom/startapp/android/publish/splash/a$a;

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->b:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/splash/a;->b(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Minimum splash screen time has passed"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->b:Z

    .line 57
    new-instance v0, Lcom/startapp/android/publish/splash/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/startapp/android/publish/splash/a$1;-><init>(Lcom/startapp/android/publish/splash/a;Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V

    .line 78
    iget-object v1, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v2, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    if-eq v1, v2, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/splash/a;->a(Lcom/startapp/android/publish/e/p;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 148
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Splash Screen has been hidden"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->d:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 150
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    .line 151
    return-void
.end method

.method public b(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-boolean v2, p0, Lcom/startapp/android/publish/splash/a;->f:Z

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v3, Lcom/startapp/android/publish/splash/a$a;->a:Lcom/startapp/android/publish/splash/a$a;

    if-ne v2, v3, :cond_0

    .line 113
    const-string v2, "Splash"

    const-string v3, "Splash Loading Timer Expired"

    invoke-static {v2, v4, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    iput-boolean v1, p0, Lcom/startapp/android/publish/splash/a;->d:Z

    .line 117
    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    iput-object v1, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 119
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->g()V

    .line 127
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v3, Lcom/startapp/android/publish/splash/a$a;->b:Lcom/startapp/android/publish/splash/a$a;

    if-ne v2, v3, :cond_1

    .line 122
    const-string v2, "Splash"

    const-string v3, "MetaData Loading Timer Expired - proceeding with old MetaData"

    invoke-static {v2, v4, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->c:Z

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/splash/a;->c(Ljava/lang/Runnable;Lcom/startapp/android/publish/b/b;)V

    :cond_1
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->c:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 155
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->c:Lcom/startapp/android/publish/splash/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    sget-object v1, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    if-eq v0, v1, :cond_0

    .line 198
    sget-object v0, Lcom/startapp/android/publish/splash/a$a;->e:Lcom/startapp/android/publish/splash/a$a;

    iput-object v0, p0, Lcom/startapp/android/publish/splash/a;->g:Lcom/startapp/android/publish/splash/a$a;

    .line 200
    iget-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->d:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/startapp/android/publish/splash/a;->e()V

    .line 204
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 210
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "User Canceled Splash Screen"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/a;->h()V

    .line 212
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/a;->f:Z

    .line 234
    return-void
.end method
