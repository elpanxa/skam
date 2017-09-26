.class public Lcom/revmob/ads/link/client/LinkData;
.super Lcom/revmob/client/AdData;
.source "LinkData.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/revmob/client/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/revmob/ads/link/client/LinkData;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/revmob/ads/link/client/LinkData;->campaignId:Ljava/lang/String;

    .line 22
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 25
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/link/client/LinkData;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 37
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/link/client/LinkData;->campaignId:Ljava/lang/String;

    return-object v0

    .line 30
    :cond_2
    :try_start_1
    const-string v0, "Testing Mode"

    iput-object v0, p0, Lcom/revmob/ads/link/client/LinkData;->campaignId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
