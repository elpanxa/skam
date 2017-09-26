.class public Lcom/startapp/android/publish/e/k;
.super Lcom/startapp/android/publish/e/c;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/a/h;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 6

    .prologue
    .line 21
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/e/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 33
    check-cast p1, Lcom/startapp/android/publish/a/h;

    .line 34
    invoke-virtual {p1}, Lcom/startapp/android/publish/a/h;->a()Ljava/util/List;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/e;->a()V

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    .line 38
    sget-object v2, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/list3d/e;->a(Lcom/startapp/android/publish/model/AdDetails;)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method protected e()Lcom/startapp/android/publish/model/GetAdRequest;
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/startapp/android/publish/e/c;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getMaxAds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    .line 29
    return-object v0
.end method
