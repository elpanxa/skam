.class public Lcom/startapp/android/publish/a/g;
.super Lcom/startapp/android/publish/a/f;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private config:Lcom/startapp/android/publish/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/f;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 20
    iput-object p2, p0, Lcom/startapp/android/publish/a/g;->config:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 6

    .prologue
    .line 25
    new-instance v0, Lcom/startapp/android/publish/e/i;

    iget-object v1, p0, Lcom/startapp/android/publish/a/g;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/startapp/android/publish/a/g;->config:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/e/i;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/i;->c()V

    .line 26
    return-void
.end method
