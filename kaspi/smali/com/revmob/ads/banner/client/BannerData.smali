.class public Lcom/revmob/ads/banner/client/BannerData;
.super Lcom/revmob/client/AdData;
.source "BannerData.java"


# instance fields
.field private clickSoundURL:Ljava/lang/String;

.field private closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

.field private drawable:Landroid/graphics/Bitmap;

.field private dspHtml:Ljava/lang/String;

.field private dspUrl:Ljava/lang/String;

.field private htmlAdUrl:Ljava/lang/String;

.field private imageSize:[I

.field private refreshTime:I

.field private showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

.field private showSoundURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/ads/internal/AnimationConfiguration;Lcom/revmob/ads/internal/AnimationConfiguration;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[II)V
    .locals 7

    .prologue
    .line 30
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p10

    move/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/revmob/client/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 31
    iput-object p4, p0, Lcom/revmob/ads/banner/client/BannerData;->drawable:Landroid/graphics/Bitmap;

    .line 32
    iput-object p5, p0, Lcom/revmob/ads/banner/client/BannerData;->htmlAdUrl:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/revmob/ads/banner/client/BannerData;->dspUrl:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/revmob/ads/banner/client/BannerData;->dspHtml:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/revmob/ads/banner/client/BannerData;->showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    .line 36
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    .line 37
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->showSoundURL:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->clickSoundURL:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->imageSize:[I

    .line 40
    move/from16 v0, p15

    iput v0, p0, Lcom/revmob/ads/banner/client/BannerData;->refreshTime:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/revmob/ads/banner/client/BannerData;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/revmob/ads/banner/client/BannerData;->campaignId:Ljava/lang/String;

    .line 48
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 50
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

    .line 51
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 63
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->campaignId:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_2
    :try_start_1
    const-string v0, "Testing Mode"

    iput-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->campaignId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getClickSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->clickSoundURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->closeAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    invoke-virtual {v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->drawable:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDspHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->dspHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getDspUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->dspUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->htmlAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->imageSize:[I

    return-object v0
.end method

.method public getRefreshTime()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/revmob/ads/banner/client/BannerData;->refreshTime:I

    return v0
.end method

.method public getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->showAnimation:Lcom/revmob/ads/internal/AnimationConfiguration;

    invoke-virtual {v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getShowSoundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->showSoundURL:Ljava/lang/String;

    return-object v0
.end method

.method public isDspBanner()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->dspUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->dspHtml:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHtmlBanner()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/revmob/ads/banner/client/BannerData;->htmlAdUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDspUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/revmob/ads/banner/client/BannerData;->dspUrl:Ljava/lang/String;

    .line 108
    return-void
.end method
