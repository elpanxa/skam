.class public Lcom/startapp/android/publish/e/m;
.super Lcom/startapp/android/publish/e/b;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 7

    .prologue
    .line 12
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/e/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;Z)V

    .line 13
    return-void
.end method
