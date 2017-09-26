.class public Lcom/revmob/ads/popup/client/PopupData;
.super Lcom/revmob/client/AdData;
.source "PopupData.java"


# static fields
.field public static final NO_MESSAGE:Ljava/lang/String; = "No, thanks."

.field public static final YES_MESSAGE:Ljava/lang/String; = "Yes, sure!"


# instance fields
.field private clickSoundURL:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private showSoundURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/revmob/client/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 22
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/revmob/ads/popup/client/PopupData;->message:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/revmob/ads/popup/client/PopupData;->showSoundURL:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lcom/revmob/ads/popup/client/PopupData;->clickSoundURL:Ljava/lang/String;

    .line 25
    return-void

    .line 22
    :cond_0
    const-string p4, "Download a FREE game!"

    goto :goto_0
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/revmob/ads/popup/client/PopupData;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/revmob/ads/popup/client/PopupData;->campaignId:Ljava/lang/String;

    .line 32
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 34
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

    .line 35
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 47
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->campaignId:Ljava/lang/String;

    return-object v0

    .line 40
    :cond_2
    :try_start_1
    const-string v0, "Testing Mode"

    iput-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->campaignId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getClickSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->clickSoundURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/revmob/ads/popup/client/PopupData;->showSoundURL:Ljava/lang/String;

    return-object v0
.end method
