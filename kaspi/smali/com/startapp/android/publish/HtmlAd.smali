.class public Lcom/startapp/android/publish/HtmlAd;
.super Lcom/startapp/android/publish/a/d;
.source "StartAppSDK"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/startapp/android/publish/e/g;

    iget-object v1, p0, Lcom/startapp/android/publish/HtmlAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/g;->c()V

    .line 20
    return-void
.end method
