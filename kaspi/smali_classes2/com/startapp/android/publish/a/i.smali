.class public Lcom/startapp/android/publish/a/i;
.super Lcom/startapp/android/publish/a/e;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/startapp/android/publish/e/j;

    iget-object v1, p0, Lcom/startapp/android/publish/a/i;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/j;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/i;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/j;->c()V

    .line 21
    return-void
.end method
