.class public Lcom/startapp/android/publish/a/k;
.super Lcom/startapp/android/publish/a/e;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lastLoadTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/a/k;J)J
    .locals 1

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/startapp/android/publish/a/k;->lastLoadTime:J

    return-wide p1
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/a/k;->lastLoadTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/MetaData;->getAdCacheTtl()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 35
    new-instance v1, Lcom/startapp/android/publish/b;

    invoke-direct {v1, p2}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/k;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/a/k;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-interface {v1, p0}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 64
    :goto_0
    return v0

    .line 41
    :cond_0
    const-string v2, "ReturnAd"

    const-string v3, "Reloading return ad - Cache TTL has passed"

    invoke-static {v2, v4, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    :goto_1
    iget-object v2, p0, Lcom/startapp/android/publish/a/k;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V

    .line 48
    sget-object v2, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/a/k;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 50
    new-instance v2, Lcom/startapp/android/publish/a/k$1;

    invoke-direct {v2, p0, v1}, Lcom/startapp/android/publish/a/k$1;-><init>(Lcom/startapp/android/publish/a/k;Lcom/startapp/android/publish/AdEventListener;)V

    .line 64
    invoke-super {p0, p1, v2, v0}, Lcom/startapp/android/publish/a/e;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z

    move-result v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "ReturnAd"

    const-string v3, "Loading return ad"

    invoke-static {v2, v4, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/startapp/android/publish/e/m;

    iget-object v1, p0, Lcom/startapp/android/publish/a/k;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/m;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/m;->c()V

    .line 31
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/startapp/android/publish/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/k;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/a/k;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/startapp/android/publish/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad not shown - Cache TTL has passed"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method
