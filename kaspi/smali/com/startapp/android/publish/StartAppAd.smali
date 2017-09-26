.class public Lcom/startapp/android/publish/StartAppAd;
.super Lcom/startapp/android/publish/Ad;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/StartAppAd$3;,
        Lcom/startapp/android/publish/StartAppAd$AdMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppAd"

.field private static final serialVersionUID:J = 0x1L

.field private static testMode:Z


# instance fields
.field private ad:Lcom/startapp/android/publish/e;

.field private adKey:Lcom/startapp/android/publish/b/b;

.field private adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

.field private callback:Lcom/startapp/android/publish/AdDisplayListener;

.field private callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/startapp/android/publish/StartAppAd;->testMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/startapp/android/publish/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 36
    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    .line 42
    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    .line 56
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    .line 59
    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->callback:Lcom/startapp/android/publish/AdDisplayListener;

    .line 65
    new-instance v0, Lcom/startapp/android/publish/StartAppAd$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/StartAppAd$1;-><init>(Lcom/startapp/android/publish/StartAppAd;)V

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->callback:Lcom/startapp/android/publish/AdDisplayListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/e;)Lcom/startapp/android/publish/e;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    return-object p1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 245
    return-void
.end method

.method private setAdMode(Lcom/startapp/android/publish/StartAppAd$AdMode;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    .line 259
    return-void
.end method

.method public static showSlider(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 481
    new-instance v0, Lcom/startapp/android/publish/slider/b;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/slider/b;-><init>(Landroid/app/Activity;)V

    .line 482
    return-void
.end method

.method public static showSlider(Landroid/app/Activity;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/startapp/android/publish/slider/b;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 486
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;)V

    .line 420
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/startapp/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 432
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;)V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 426
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/splash/SplashHideListener;)V

    .line 437
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/splash/SplashConfig;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/splash/SplashHideListener;)V
    .locals 4

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p2, p0}, Lcom/startapp/android/publish/splash/SplashConfig;->setDefaults(Landroid/content/Context;)V

    .line 448
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;Z)V

    .line 450
    const-class v0, Lcom/startapp/android/publish/OverlayActivity;

    const-class v1, Lcom/startapp/android/publish/AppWallActivity;

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v0, "SplashConfig"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 453
    const-string v0, "AdPreference"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    const-string v0, "testMode"

    sget-boolean v2, Lcom/startapp/android/publish/StartAppAd;->testMode:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v0, "fullscreen"

    invoke-static {p0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v0, "placement"

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const v0, 0x44008000    # 514.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 462
    new-instance v0, Lcom/startapp/android/publish/StartAppAd$2;

    invoke-direct {v0, p0, p4}, Lcom/startapp/android/publish/StartAppAd$2;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/splash/SplashHideListener;)V

    .line 475
    invoke-static {p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.splashHidden"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 478
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 394
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.CloseAdActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 396
    return-void
.end method

.method protected getAdHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 233
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/startapp/android/publish/a/d;

    if-eqz v2, :cond_0

    .line 235
    check-cast v0, Lcom/startapp/android/publish/a/d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/d;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected getLauncherName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0}, Lcom/startapp/android/publish/e;->getLauncherName()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Lcom/startapp/android/publish/Ad;->getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v0

    .line 224
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/Ad;->getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method

.method public getState()Lcom/startapp/android/publish/Ad$AdState;
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Lcom/startapp/android/publish/e;->getState()Lcom/startapp/android/publish/Ad$AdState;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v1

    .line 401
    const/4 v0, 0x0

    .line 402
    if-eqz v1, :cond_0

    .line 403
    invoke-interface {v1}, Lcom/startapp/android/publish/e;->isReady()Z

    move-result v0

    .line 405
    :cond_0
    return v0
.end method

.method public load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/b/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    new-instance v1, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 265
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    new-instance v1, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 275
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;)V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 285
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 295
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 290
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/StartAppAd;->setAdMode(Lcom/startapp/android/publish/StartAppAd$AdMode;)V

    .line 301
    invoke-virtual {p0, p2, p3}, Lcom/startapp/android/publish/StartAppAd;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 302
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 270
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    .line 280
    return-void
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public loadSplash(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/b/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Lcom/startapp/android/publish/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    .line 415
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 345
    const-string v0, "exit_ad"

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->showAd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const-string v0, "StartAppAd"

    const/4 v1, 0x3

    const-string v2, "Could not display StartAppAd onBackPressed"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    :cond_0
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/StartAppSDK;->onBackPressed()V

    .line 349
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 374
    const-string v0, "AdMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    sget-object v1, Lcom/startapp/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    .line 376
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 377
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->load()Z

    .line 386
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 379
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    goto :goto_0

    .line 380
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 381
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->OVERLAY:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    goto :goto_0

    .line 382
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 383
    sget-object v0, Lcom/startapp/android/publish/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->loadAd()V

    .line 329
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    sget-object v1, Lcom/startapp/android/publish/StartAppAd$3;->a:[I

    iget-object v2, p0, Lcom/startapp/android/publish/StartAppAd;->adMode:Lcom/startapp/android/publish/StartAppAd$AdMode;

    invoke-virtual {v2}, Lcom/startapp/android/publish/StartAppAd$AdMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    const-string v1, "AdMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    return-void

    .line 356
    :pswitch_0
    const/4 v0, 0x1

    .line 357
    goto :goto_0

    .line 359
    :pswitch_1
    const/4 v0, 0x2

    .line 360
    goto :goto_0

    .line 362
    :pswitch_2
    const/4 v0, 0x3

    .line 363
    goto :goto_0

    .line 365
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected shouldDisplayAd(Ljava/lang/String;Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    return-object v0
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/StartAppAd;->show(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public show(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    .line 157
    new-instance v1, Lcom/startapp/android/publish/a;

    invoke-direct {v1, p2}, Lcom/startapp/android/publish/a;-><init>(Lcom/startapp/android/publish/AdDisplayListener;)V

    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->callback:Lcom/startapp/android/publish/AdDisplayListener;

    .line 159
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getPlacement()Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-result-object v4

    .line 162
    invoke-virtual {p0, p1, v4}, Lcom/startapp/android/publish/StartAppAd;->shouldDisplayAd(Ljava/lang/String;Lcom/startapp/android/publish/model/AdPreferences$Placement;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v1

    iget-object v5, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v1, v5, p0}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/e;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    .line 165
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/e;->a(Ljava/lang/String;)Z

    move-result v1

    .line 169
    if-eqz v1, :cond_2

    .line 170
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    new-instance v5, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    invoke-direct {v5, v4, p1}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/startapp/android/publish/model/adrules/SessionManager;->addAdDisplayEvent(Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;)V

    move v0, v1

    :cond_0
    :goto_0
    move v1, v0

    move-object v0, v2

    .line 190
    :goto_1
    if-eqz v1, :cond_6

    .line 192
    const-string v0, "com.startapp.android.HideDisplayBroadcastListener"

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 193
    const-string v0, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 194
    const-string v0, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 195
    const-string v0, "com.startapp.android.OnClickCallback"

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 214
    :cond_1
    :goto_2
    return v1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    instance-of v0, v0, Lcom/startapp/android/publish/Ad;

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    check-cast v0, Lcom/startapp/android/publish/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/Ad;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    move v0, v1

    goto :goto_0

    .line 178
    :cond_3
    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    .line 179
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v1

    iget-object v4, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_4
    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 187
    :cond_5
    sget-object v1, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v2

    if-nez v2, :cond_7

    .line 198
    sget-object v2, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    .line 200
    :cond_7
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v2

    sget-object v4, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    if-eq v2, v4, :cond_8

    .line 201
    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v2

    sget-object v4, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    if-eq v2, v4, :cond_a

    .line 202
    iget-object v2, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    :goto_3
    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/e;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, p1, v4}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_8
    :goto_4
    iput-object v3, p0, Lcom/startapp/android/publish/StartAppAd;->ad:Lcom/startapp/android/publish/e;

    .line 209
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->callback:Lcom/startapp/android/publish/AdDisplayListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd;->callback:Lcom/startapp/android/publish/AdDisplayListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/Ad;)V

    goto/16 :goto_2

    .line 202
    :cond_9
    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v0

    iget-object v4, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v0, v4}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v0

    goto :goto_3

    .line 203
    :cond_a
    if-eqz v0, :cond_8

    .line 204
    iget-object v2, p0, Lcom/startapp/android/publish/StartAppAd;->context:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/b/a;->a()Lcom/startapp/android/publish/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/startapp/android/publish/StartAppAd;->adKey:Lcom/startapp/android/publish/b/b;

    invoke-virtual {v4, v5}, Lcom/startapp/android/publish/b/a;->a(Lcom/startapp/android/publish/b/b;)Lcom/startapp/android/publish/e;

    move-result-object v4

    invoke-static {v4}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/e;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getSimpleReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, p1, v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public showAd()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public showAd(Lcom/startapp/android/publish/AdDisplayListener;)Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/StartAppAd;->show(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public showAd(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public showAd(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/StartAppAd;->show(Ljava/lang/String;Lcom/startapp/android/publish/AdDisplayListener;)Z

    move-result v0

    return v0
.end method
