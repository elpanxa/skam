.class public Lcom/startapp/android/publish/a/m;
.super Lcom/startapp/android/publish/a/e;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 17
    return-void
.end method


# virtual methods
.method public load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/startapp/android/publish/a/e;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/startapp/android/publish/e/o;

    iget-object v1, p0, Lcom/startapp/android/publish/a/m;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/o;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/m;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/o;->c()V

    .line 27
    return-void
.end method
