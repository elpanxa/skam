.class public Lcom/startapp/android/publish/a/c;
.super Lcom/startapp/android/publish/a/e;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/startapp/android/publish/e/g;

    iget-object v1, p0, Lcom/startapp/android/publish/a/c;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/e/g;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/g;->c()V

    .line 21
    return-void
.end method
