.class public Lcom/startapp/android/publish/splash/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/splash/b$7;,
        Lcom/startapp/android/publish/splash/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/startapp/android/publish/splash/SplashConfig;

.field private c:Lcom/startapp/android/publish/splash/a;

.field private d:Lcom/startapp/android/publish/b/b;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Lcom/startapp/android/publish/splash/b$a;

.field private h:Lcom/startapp/android/publish/model/AdPreferences;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/startapp/android/publish/AdEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/b;->f:Z

    .line 72
    new-instance v0, Lcom/startapp/android/publish/splash/b$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/splash/b$1;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->i:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/startapp/android/publish/splash/b$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/splash/b$2;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->j:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/startapp/android/publish/splash/b$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/splash/b$3;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->k:Lcom/startapp/android/publish/AdEventListener;

    .line 66
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    .line 68
    iput-object p3, p0, Lcom/startapp/android/publish/splash/b;->h:Lcom/startapp/android/publish/model/AdPreferences;

    .line 69
    new-instance v0, Lcom/startapp/android/publish/splash/a;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/splash/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->c:Lcom/startapp/android/publish/splash/a;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/b;Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/b/b;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b;->d:Lcom/startapp/android/publish/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/b;Lcom/startapp/android/publish/splash/b$a;)Lcom/startapp/android/publish/splash/b$a;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/startapp/android/publish/splash/b;->g:Lcom/startapp/android/publish/splash/b$a;

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/splash/b;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/b;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/splash/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/b;->e()V

    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/splash/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/b;->f()V

    return-void
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 117
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 119
    iget-object v3, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v3}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v3

    sget-object v4, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    if-ne v3, v4, :cond_0

    .line 120
    if-ne v2, v5, :cond_1

    .line 122
    iget-object v3, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    sget-object v4, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;

    .line 129
    :cond_0
    :goto_0
    sget-object v3, Lcom/startapp/android/publish/splash/b$7;->a:[I

    iget-object v4, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v4}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 149
    :goto_1
    const-string v1, "Splash"

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Orientation: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v4}, Lcom/startapp/android/publish/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    return v0

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    sget-object v4, Lcom/startapp/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/splash/SplashConfig;

    goto :goto_0

    .line 131
    :pswitch_0
    if-ne v2, v5, :cond_3

    .line 136
    :goto_2
    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 139
    :pswitch_1
    if-ne v2, v0, :cond_2

    .line 144
    :goto_3
    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/startapp/android/publish/h/b;->b(Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 158
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Displaying Splash screen"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/splash/SplashConfig;->validate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v1}, Lcom/startapp/android/publish/splash/SplashConfig;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    iget-object v3, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/splash/SplashConfig;->getLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/splash/b;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/startapp/android/publish/splash/b;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/b$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->g:Lcom/startapp/android/publish/splash/b$a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Loading Splash Ad"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    new-instance v0, Lcom/startapp/android/publish/splash/b$a;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/splash/b$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->g:Lcom/startapp/android/publish/splash/b$a;

    .line 180
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->g:Lcom/startapp/android/publish/splash/b$a;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->h:Lcom/startapp/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->k:Lcom/startapp/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/splash/b$a;->loadSplash(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/splash/b;->d:Lcom/startapp/android/publish/b/b;

    .line 181
    return-void
.end method

.method static synthetic f(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/splash/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->c:Lcom/startapp/android/publish/splash/a;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 247
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Started Splash Loading Timer"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/splash/b$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/splash/b$4;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/splash/b$5;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/splash/b$5;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 270
    const-string v0, "Splash"

    const/4 v1, 0x4

    const-string v2, "Started Splash Display Timer"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/splash/b$6;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/splash/b$6;-><init>(Lcom/startapp/android/publish/splash/b;)V

    iget-object v2, p0, Lcom/startapp/android/publish/splash/b;->b:Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/splash/SplashConfig$MaxAdDisplayTime;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/startapp/android/publish/splash/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/b;->g()V

    return-void
.end method

.method static synthetic h(Lcom/startapp/android/publish/splash/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/startapp/android/publish/splash/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/startapp/android/publish/splash/b;)Lcom/startapp/android/publish/b/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->d:Lcom/startapp/android/publish/b/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->c:Lcom/startapp/android/publish/splash/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/a;->d()V

    .line 110
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 93
    const-string v0, "Splash"

    const-string v1, "========= Splash Screen Feature ========="

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/startapp/android/publish/splash/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/splash/b;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    const-string v0, "Splash"

    const-string v1, "Splash screen orientation is being modified"

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/splash/b;->f:Z

    .line 283
    iget-object v0, p0, Lcom/startapp/android/publish/splash/b;->c:Lcom/startapp/android/publish/splash/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/splash/a;->f()V

    .line 284
    return-void
.end method
