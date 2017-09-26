.class public Lcom/startapp/android/publish/e/j;
.super Lcom/startapp/android/publish/e/b;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/a/i;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 7

    .prologue
    .line 16
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/e/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected e()Lcom/startapp/android/publish/model/GetAdRequest;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/startapp/android/publish/e/b;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getMaxAds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    .line 24
    return-object v0
.end method
