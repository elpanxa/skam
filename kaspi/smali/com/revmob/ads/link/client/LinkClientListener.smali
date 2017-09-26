.class public Lcom/revmob/ads/link/client/LinkClientListener;
.super Lcom/revmob/ads/internal/AdRevMobClientListener;
.source "LinkClientListener.java"


# direct methods
.method public constructor <init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdRevMobClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    .line 14
    return-void
.end method

.method public static createData(Ljava/lang/String;)Lcom/revmob/ads/link/client/LinkData;
    .locals 6
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
    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/revmob/ads/link/client/LinkClientListener;->getAppOrSite(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v0}, Lcom/revmob/ads/link/client/LinkClientListener;->getOpenInside(Lorg/json/JSONObject;)Z

    move-result v5

    .line 26
    const-string v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/revmob/ads/link/client/LinkClientListener;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v0}, Lcom/revmob/ads/link/client/LinkClientListener;->getFollowRedirect(Lorg/json/JSONObject;)Z

    move-result v3

    .line 29
    invoke-static {v1}, Lcom/revmob/ads/link/client/LinkClientListener;->getImpressionUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v0, Lcom/revmob/ads/link/client/LinkData;

    invoke-direct/range {v0 .. v5}, Lcom/revmob/ads/link/client/LinkData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-object v0
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
    iget-object v0, p0, Lcom/revmob/ads/link/client/LinkClientListener;->ad:Lcom/revmob/ads/internal/Ad;

    invoke-static {p1}, Lcom/revmob/ads/link/client/LinkClientListener;->createData(Ljava/lang/String;)Lcom/revmob/ads/link/client/LinkData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/revmob/ads/internal/Ad;->updateWithData(Lcom/revmob/client/AdData;)V

    .line 19
    return-void
.end method
