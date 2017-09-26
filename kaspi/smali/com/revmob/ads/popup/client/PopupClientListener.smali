.class public Lcom/revmob/ads/popup/client/PopupClientListener;
.super Lcom/revmob/ads/internal/AdRevMobClientListener;
.source "PopupClientListener.java"


# direct methods
.method public constructor <init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdRevMobClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    .line 14
    return-void
.end method

.method public static createData(Ljava/lang/String;)Lcom/revmob/ads/popup/client/PopupData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, "pop_up"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/revmob/ads/popup/client/PopupClientListener;->getAppOrSite(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v0}, Lcom/revmob/ads/popup/client/PopupClientListener;->getOpenInside(Lorg/json/JSONObject;)Z

    move-result v6

    .line 26
    const-string v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/revmob/ads/popup/client/PopupClientListener;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v0}, Lcom/revmob/ads/popup/client/PopupClientListener;->getFollowRedirect(Lorg/json/JSONObject;)Z

    move-result v3

    .line 29
    invoke-static {v1}, Lcom/revmob/ads/popup/client/PopupClientListener;->getImpressionUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 33
    :try_start_0
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 38
    :goto_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 39
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 41
    :try_start_1
    const-string v9, "sound"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    const-string v9, "on_show"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    const-string v9, "on_click"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 47
    :goto_1
    new-instance v0, Lcom/revmob/ads/popup/client/PopupData;

    invoke-direct/range {v0 .. v8}, Lcom/revmob/ads/popup/client/PopupData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_1

    .line 34
    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public handleResponse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/revmob/ads/popup/client/PopupClientListener;->ad:Lcom/revmob/ads/internal/Ad;

    invoke-static {p1}, Lcom/revmob/ads/popup/client/PopupClientListener;->createData(Ljava/lang/String;)Lcom/revmob/ads/popup/client/PopupData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/revmob/ads/internal/Ad;->updateWithData(Lcom/revmob/client/AdData;)V

    .line 19
    return-void
.end method
