.class public Lcom/adsdk/sdk/nativeads/NativeViewBinder;
.super Ljava/lang/Object;
.source "NativeViewBinder.java"


# instance fields
.field private adLayoutId:I

.field private imageAssetsBidings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textAssetsBidings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->adLayoutId:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->textAssetsBidings:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->imageAssetsBidings:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public bindImageAsset(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->imageAssetsBidings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public bindTextAsset(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->textAssetsBidings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public getAdLayoutId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->adLayoutId:I

    return v0
.end method

.method public getIdForImageAsset(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->imageAssetsBidings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdForTextAsset(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->textAssetsBidings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageAssetsBindingsKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->imageAssetsBidings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTextAssetsBindingsKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->textAssetsBidings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
