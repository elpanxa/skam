.class public abstract Lcom/adsdk/sdk/customevents/CustomEventNative;
.super Lcom/adsdk/sdk/nativeads/NativeAd;
.source "CustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;
    }
.end annotation


# instance fields
.field protected listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method protected addExtraAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/customevents/CustomEventNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/customevents/CustomEventNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addImageAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    invoke-direct {v0, p2, v1, v1}, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;-><init>(Ljava/lang/String;II)V

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/adsdk/sdk/customevents/CustomEventNative;->addImageAsset(Ljava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected addImpressionTracker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;

    const-string v1, "impression"

    invoke-direct {v0, v1, p1}, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/CustomEventNative;->getTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public abstract createNativeAd(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected isNativeAdValid(Lcom/adsdk/sdk/nativeads/NativeAd;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    .line 20
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    move-result-object v0

    .line 21
    const-string v3, "main"

    invoke-virtual {p1, v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    move-result-object v3

    .line 22
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 28
    :goto_0
    const-string v3, "headline"

    invoke-virtual {p1, v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "headline"

    invoke-virtual {p1, v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 29
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "description"

    invoke-virtual {p1, v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    .line 33
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    :goto_2
    return v1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/CustomEventNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    .line 67
    invoke-super {p0}, Lcom/adsdk/sdk/nativeads/NativeAd;->unregisterListener()V

    .line 68
    return-void
.end method
