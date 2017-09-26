.class public abstract Lcom/startapp/android/publish/e/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/startapp/android/publish/Ad;

.field protected final c:Lcom/startapp/android/publish/model/AdPreferences;

.field protected final d:Lcom/startapp/android/publish/AdEventListener;

.field protected e:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/e/d;->f:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/e/d;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/startapp/android/publish/e/d;->b:Lcom/startapp/android/publish/Ad;

    .line 32
    iput-object p3, p0, Lcom/startapp/android/publish/e/d;->c:Lcom/startapp/android/publish/model/AdPreferences;

    .line 33
    new-instance v0, Lcom/startapp/android/publish/b;

    invoke-direct {v0, p4}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    iput-object v0, p0, Lcom/startapp/android/publish/e/d;->d:Lcom/startapp/android/publish/AdEventListener;

    .line 34
    iput-object p5, p0, Lcom/startapp/android/publish/e/d;->e:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 35
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p2, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/e/d;->b(Ljava/lang/Boolean;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/e/d;->b:Lcom/startapp/android/publish/Ad;

    iget-object v1, p0, Lcom/startapp/android/publish/e/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/startapp/android/publish/e/d;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/d;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)Z
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/startapp/android/publish/e/d;->b:Lcom/startapp/android/publish/Ad;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->READY:Lcom/startapp/android/publish/Ad$AdState;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/Ad;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 70
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/android/publish/e/d$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/e/d$1;-><init>(Lcom/startapp/android/publish/e/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    .line 56
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/d;->a()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/e/d;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/startapp/android/publish/model/GetAdRequest;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/startapp/android/publish/model/GetAdRequest;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/GetAdRequest;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/startapp/android/publish/e/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/e/d;->c:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/model/GetAdRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 86
    iget-object v1, p0, Lcom/startapp/android/publish/e/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/e/d;->c:Lcom/startapp/android/publish/model/AdPreferences;

    iget-object v3, p0, Lcom/startapp/android/publish/e/d;->e:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v4, p0, Lcom/startapp/android/publish/e/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/startapp/android/publish/h/u;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/model/GetAdRequest;->fillAdPreferences(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method
