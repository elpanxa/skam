.class public Lcom/revmob/ads/banner/client/BannerClientListener;
.super Lcom/revmob/ads/internal/AdRevMobClientListener;
.source "BannerClientListener.java"


# direct methods
.method public constructor <init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdRevMobClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public handleResponse(Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/revmob/client/RevMobClient;->sett2(J)V

    .line 27
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v3, "banners"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 29
    invoke-static {v6}, Lcom/revmob/ads/banner/client/BannerClientListener;->getAppOrSite(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-static {v6}, Lcom/revmob/ads/banner/client/BannerClientListener;->getOpenInside(Lorg/json/JSONObject;)Z

    move-result v13

    .line 31
    const-string v2, "links"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 32
    invoke-static/range {v18 .. v18}, Lcom/revmob/ads/banner/client/BannerClientListener;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {v6}, Lcom/revmob/ads/banner/client/BannerClientListener;->getFollowRedirect(Lorg/json/JSONObject;)Z

    move-result v5

    .line 34
    invoke-static/range {v18 .. v18}, Lcom/revmob/ads/banner/client/BannerClientListener;->getImpressionUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 35
    const-string v2, "html"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/revmob/ads/banner/client/BannerClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    const-string v2, "dsp_url"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/revmob/ads/banner/client/BannerClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    const-string v2, "dsp_html"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/revmob/ads/banner/client/BannerClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 39
    const-string v2, "imageSize"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/revmob/ads/banner/client/BannerClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 40
    const-string v2, "refreshTime"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "refreshTime"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 41
    :goto_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 44
    :try_start_0
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 45
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v16, v10

    .line 46
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v16, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    new-instance v10, Lcom/revmob/ads/internal/ShowAnimationConfiguration;

    invoke-direct {v10}, Lcom/revmob/ads/internal/ShowAnimationConfiguration;-><init>()V

    .line 54
    new-instance v11, Lcom/revmob/ads/internal/CloseAnimationConfiguration;

    invoke-direct {v11}, Lcom/revmob/ads/internal/CloseAnimationConfiguration;-><init>()V

    .line 56
    :try_start_1
    const-string v2, "animation"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 57
    const-string v2, "duration"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 58
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 59
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 61
    const-string v2, "show"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 62
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_1

    .line 63
    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    const/4 v2, 0x0

    const/4 v10, 0x0

    aput v10, v16, v2

    .line 50
    const/4 v2, 0x1

    const/4 v10, 0x0

    aput v10, v16, v2

    goto :goto_1

    .line 65
    :cond_1
    :try_start_2
    const-string v2, "close"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 66
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_2

    .line 67
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 69
    :catch_1
    move-exception v2

    .line 72
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 73
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .line 75
    :try_start_3
    const-string v14, "sound"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 76
    const-string v14, "on_show"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v14, "on_click"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v15

    move-object v14, v2

    .line 81
    :goto_4
    const/4 v6, 0x0

    .line 83
    if-nez v8, :cond_3

    if-eqz v9, :cond_8

    .line 84
    :cond_3
    const-string v2, "Banner DSP"

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 90
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    :cond_5
    if-nez v8, :cond_6

    if-eqz v9, :cond_7

    .line 91
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/revmob/client/RevMobClient;->sett3(J)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/revmob/ads/banner/client/BannerClientListener;->ad:Lcom/revmob/ads/internal/Ad;

    move-object/from16 v18, v0

    new-instance v2, Lcom/revmob/ads/banner/client/BannerData;

    invoke-direct/range {v2 .. v17}, Lcom/revmob/ads/banner/client/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/ads/internal/AnimationConfiguration;Lcom/revmob/ads/internal/AnimationConfiguration;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[II)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/revmob/ads/internal/Ad;->updateWithData(Lcom/revmob/client/AdData;)V

    .line 95
    :cond_7
    return-void

    .line 78
    :catch_2
    move-exception v6

    move-object v14, v2

    goto :goto_4

    .line 85
    :cond_8
    if-nez v7, :cond_4

    .line 86
    const-string v2, "image"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/revmob/ads/banner/client/BannerClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v6, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v6}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    .line 88
    move-object/from16 v0, v19

    invoke-virtual {v6, v2, v0}, Lcom/revmob/internal/HTTPHelper;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_5
.end method
