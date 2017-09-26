.class public Lcom/adsdk/sdk/nativeads/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;,
        Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;
    }
.end annotation


# static fields
.field public static final ADVERTISER_TEXT_ASSET:Ljava/lang/String; = "advertiser"

.field public static final CALL_TO_ACTION_TEXT_ASSET:Ljava/lang/String; = "cta"

.field public static final DESCRIPTION_TEXT_ASSET:Ljava/lang/String; = "description"

.field public static final HEADLINE_TEXT_ASSET:Ljava/lang/String; = "headline"

.field public static final ICON_IMAGE_ASSET:Ljava/lang/String; = "icon"

.field public static final IMPRESSION_TRACKER_TYPE:Ljava/lang/String; = "impression"

.field public static final MAIN_IMAGE_ASSET:Ljava/lang/String; = "main"

.field public static final RATING_TEXT_ASSET:Ljava/lang/String; = "rating"


# instance fields
.field private clickUrl:Ljava/lang/String;

.field private customEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation
.end field

.field private imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private textAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public addImageAsset(Ljava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;)V
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public addTextAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->customEvents:Ljava/util/List;

    return-object v0
.end method

.method public getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    return-object v0
.end method

.method public getTextAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    return-object v0
.end method

.method public handleClick()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public handleImpression()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public prepareImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->clickUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCustomEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->customEvents:Ljava/util/List;

    .line 114
    return-void
.end method

.method public setTrackers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    .line 106
    return-void
.end method

.method public unregisterListener()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
