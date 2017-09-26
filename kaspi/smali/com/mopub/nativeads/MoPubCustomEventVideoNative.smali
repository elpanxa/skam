.class public Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$1;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    .line 881
    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/app/Activity;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "com_mopub_native_json"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    instance-of v0, v2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 98
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "Event-Details"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/mopub/common/event/EventDetails;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mopub/common/event/EventDetails;

    move-object v5, v0

    .line 74
    :goto_1
    new-instance v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    invoke-direct {v4, p4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;-><init>(Ljava/util/Map;)V

    .line 75
    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->hasValidHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 80
    :cond_2
    const-string v0, "Click-Tracking-Url"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    :cond_3
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    :cond_4
    move-object v6, v1

    .line 89
    check-cast v6, Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    check-cast v2, Lorg/json/JSONObject;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/common/event/EventDetails;Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
