.class public Lcom/startapp/android/publish/e/i;
.super Lcom/startapp/android/publish/e/c;
.source "StartAppSDK"


# instance fields
.field private g:Lcom/startapp/android/publish/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 6

    .prologue
    .line 17
    sget-object v5, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/e/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 18
    iput-object p5, p0, Lcom/startapp/android/publish/e/i;->g:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected e()Lcom/startapp/android/publish/model/GetAdRequest;
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/startapp/android/publish/e/c;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/startapp/android/publish/e/i;->g:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/GetAdRequest;->setAdsNumber(I)V

    .line 25
    iget-object v1, p0, Lcom/startapp/android/publish/e/i;->g:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/GetAdRequest;->setWidth(I)V

    .line 26
    iget-object v1, p0, Lcom/startapp/android/publish/e/i;->g:Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->getImageSize()Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/GetAdRequest;->setHeight(I)V

    .line 28
    return-object v0
.end method
