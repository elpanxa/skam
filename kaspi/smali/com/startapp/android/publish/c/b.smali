.class public abstract Lcom/startapp/android/publish/c/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/c/b$3;
    }
.end annotation


# instance fields
.field protected a:Lcom/startapp/android/publish/adinformation/a;

.field protected b:Z

.field private c:Landroid/content/Intent;

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:[Z

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Lcom/startapp/android/publish/Ad;

.field private l:Ljava/lang/String;

.field private m:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private n:Z

.field private o:Lcom/startapp/android/publish/adinformation/b;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/c/b;->a:Lcom/startapp/android/publish/adinformation/a;

    .line 30
    new-instance v0, Lcom/startapp/android/publish/c/b$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/b$1;-><init>(Lcom/startapp/android/publish/c/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/c/b;->e:Landroid/content/BroadcastReceiver;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/b;->b:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/c/b;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    .line 54
    sget-object v0, Lcom/startapp/android/publish/c/b$3;->a:[I

    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Lcom/startapp/android/publish/c/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/c/a;-><init>()V

    move-object v1, v0

    .line 75
    :goto_0
    invoke-direct {v1, p1}, Lcom/startapp/android/publish/c/b;->a(Landroid/content/Intent;)V

    .line 76
    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/b;->a(Landroid/app/Activity;)V

    .line 77
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->c(Ljava/lang/String;)V

    .line 78
    const-string v0, "tracking"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->a([Ljava/lang/String;)V

    .line 79
    const-string v0, "trackingClickUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->b([Ljava/lang/String;)V

    .line 80
    const-string v0, "packageNames"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->c([Ljava/lang/String;)V

    .line 81
    const-string v0, "smartRedirect"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/c/b;->a([Z)V

    .line 82
    const-string v0, "htmlUuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    sget-object v2, Lcom/startapp/android/publish/d;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/c/b;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_1
    const-string v0, "isSplash"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->a(Z)V

    .line 91
    const-string v0, "adInfoOverride"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adinformation/b;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->a(Lcom/startapp/android/publish/adinformation/b;)V

    .line 92
    const-string v0, "adTag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/c/b;->b(Ljava/lang/String;)V

    .line 93
    invoke-direct {v1, p2}, Lcom/startapp/android/publish/c/b;->a(Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 95
    invoke-virtual {v1}, Lcom/startapp/android/publish/c/b;->d()[Z

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    new-array v0, v4, [Z

    aput-boolean v4, v0, v3

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/c/b;->a([Z)V

    .line 99
    :cond_1
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/Ad;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/c/b;->a(Lcom/startapp/android/publish/Ad;)V

    .line 101
    const-string v0, "GenericMode"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Placement=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/startapp/android/publish/c/b;->j()Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    return-object v1

    .line 56
    :pswitch_0
    new-instance v0, Lcom/startapp/android/publish/c/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/c/d;-><init>()V

    move-object v1, v0

    .line 57
    goto/16 :goto_0

    .line 60
    :pswitch_1
    const-string v0, "videoAd"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/startapp/android/publish/c/g;

    invoke-direct {v0}, Lcom/startapp/android/publish/c/g;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    .line 63
    :cond_2
    new-instance v0, Lcom/startapp/android/publish/c/e;

    invoke-direct {v0}, Lcom/startapp/android/publish/c/e;-><init>()V

    move-object v1, v0

    .line 65
    goto/16 :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Lcom/startapp/android/publish/c/f;

    invoke-direct {v0}, Lcom/startapp/android/publish/c/f;-><init>()V

    move-object v1, v0

    .line 68
    goto/16 :goto_0

    .line 87
    :cond_3
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/c/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->d:Landroid/app/Activity;

    .line 128
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->c:Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private a(Lcom/startapp/android/publish/adinformation/b;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->o:Lcom/startapp/android/publish/adinformation/b;

    .line 132
    return-void
.end method

.method private a(Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->m:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 112
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/startapp/android/publish/c/b;->n:Z

    .line 116
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->h:[Ljava/lang/String;

    .line 152
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->p:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->i:[Ljava/lang/String;

    .line 156
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->g:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private c([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->j:[Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/b;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.CloseAdActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 232
    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .locals 5

    .prologue
    .line 207
    new-instance v0, Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adinformation/a$b;->b:Lcom/startapp/android/publish/adinformation/a$b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->j()Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->k()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/c/b;->a:Lcom/startapp/android/publish/adinformation/a;

    .line 208
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    .line 209
    return-void
.end method

.method public a(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->k:Lcom/startapp/android/publish/Ad;

    .line 267
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->l:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected a([Z)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/startapp/android/publish/c/b;->f:[Z

    .line 168
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/b;->b:Z

    .line 144
    return-void
.end method

.method protected d()[Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->f:[Z

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->h:[Ljava/lang/String;

    return-object v0
.end method

.method protected h()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->i:[Ljava/lang/String;

    return-object v0
.end method

.method protected i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->j:[Ljava/lang/String;

    return-object v0
.end method

.method protected j()Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->m:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method protected k()Lcom/startapp/android/publish/adinformation/b;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->o:Lcom/startapp/android/publish/adinformation/b;

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->n()V

    .line 213
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/c/b$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/b$2;-><init>(Lcom/startapp/android/publish/c/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.HideDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 225
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->m()V

    .line 244
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public abstract r()V
.end method

.method public s()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 258
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/c/b;->e:Landroid/content/BroadcastReceiver;

    .line 259
    return-void
.end method

.method public t()Lcom/startapp/android/publish/Ad;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/startapp/android/publish/c/b;->k:Lcom/startapp/android/publish/Ad;

    return-object v0
.end method
