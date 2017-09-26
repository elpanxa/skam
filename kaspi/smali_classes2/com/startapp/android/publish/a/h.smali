.class public Lcom/startapp/android/publish/a/h;
.super Lcom/startapp/android/publish/a/f;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/e;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/f;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 29
    sget-object v0, Lcom/startapp/android/publish/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/startapp/android/publish/h/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/a/h;->a:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-object v0, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-static {}, Lcom/startapp/android/publish/h/u;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/list3d/e;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 47
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    const-class v4, Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v3, "adInfoOverride"

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/h;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    const-string v3, "fullscreen"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v0, "adTag"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v0, 0x14880000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 58
    :cond_0
    sget-object v0, Lcom/startapp/android/publish/d;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    sget-object v0, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/a/h;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 62
    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getLauncherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/startapp/android/publish/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/startapp/android/publish/e/k;

    iget-object v1, p0, Lcom/startapp/android/publish/a/h;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/k;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/h;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/k;->c()V

    .line 36
    return-void
.end method
