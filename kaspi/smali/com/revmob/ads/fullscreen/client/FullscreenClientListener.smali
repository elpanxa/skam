.class public Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;
.super Lcom/revmob/ads/internal/AdRevMobClientListener;
.source "FullscreenClientListener.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static success:Z


# instance fields
.field private shallUpdateData:Z


# direct methods
.method public constructor <init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdRevMobClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    .line 42
    sput-object p3, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->activity:Landroid/app/Activity;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    .line 44
    return-void
.end method

.method public static createData(Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/client/FullscreenData;
    .locals 79
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    .line 68
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v3, "fullscreen"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 71
    invoke-static/range {v27 .. v27}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getAppOrSite(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    .line 72
    invoke-static/range {v27 .. v27}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getOpenInside(Lorg/json/JSONObject;)Z

    move-result v17

    .line 73
    const-string v2, "links"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 75
    sget-object v3, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    .line 76
    invoke-static {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static/range {v27 .. v27}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getFollowRedirect(Lorg/json/JSONObject;)Z

    move-result v5

    .line 78
    invoke-static {v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getImpressionUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v6, "html"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    const-string v6, "dsp_url"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    const-string v6, "dsp_html"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 83
    const-string v6, "image_portrait"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 84
    const-string v6, "image_landscape"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 85
    const-string v6, "framePortrait"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 86
    const-string v6, "frameLandscape"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 87
    const-string v6, "preRoll"

    const-string v8, "landscape"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getStringKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 88
    const-string v6, "preRoll"

    const-string v8, "portrait"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getStringKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 89
    const-string v6, "preRoll"

    const-string v8, "message"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getStringKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 90
    const-string v6, "preRoll"

    const-string v8, "red"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 91
    const-string v6, "preRoll"

    const-string v8, "green"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v53

    .line 92
    const-string v6, "preRoll"

    const-string v8, "blue"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 93
    const-string v6, "preRoll"

    const-string v8, "alpha"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    .line 94
    const-string v6, "postRoll"

    const-string v8, "href"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getStringKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 95
    const-string v6, "postRoll"

    const-string v8, "message"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getStringKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 96
    const-string v6, "preRoll"

    const-string v8, "red"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 97
    const-string v6, "preRoll"

    const-string v8, "green"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v57

    .line 98
    const-string v6, "preRoll"

    const-string v8, "blue"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v58

    .line 99
    const-string v6, "preRoll"

    const-string v8, "alpha"

    invoke-static {v2, v6, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getIntKeyByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v59

    .line 100
    const/16 v39, 0x0

    .line 101
    const/16 v40, 0x0

    .line 102
    const/16 v41, 0x0

    .line 103
    const-wide/16 v44, 0x0

    .line 104
    const-wide/16 v42, 0x0

    .line 105
    const-wide/16 v48, 0x0

    .line 106
    const-wide/16 v46, 0x0

    .line 107
    const-string v6, "orientation"

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v60

    .line 108
    const-string v6, "orientationLock"

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v64

    .line 110
    const-string v6, "image"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 111
    const-string v6, "imageSize"

    invoke-static {v2, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    const-string v8, "videoSkipTime"

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v21

    .line 113
    const-string v8, "timeLeftTime"

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v23

    .line 114
    const-string v8, "videoEnd"

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v24

    .line 115
    const-string v8, "fullscreenPercentage"

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getVideoDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v62

    .line 116
    const-string v8, "video"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 117
    const-string v8, "replay_button"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 118
    const-string v8, "revmob_logo"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 119
    const-string v8, "volume_mute"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 120
    const-string v8, "volume_up"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 121
    const-string v8, "sound"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 122
    const-string v8, "sound_off"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 123
    const-string v8, "close_button"

    invoke-static {v2, v8}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 131
    const/16 v37, 0x0

    .line 132
    const/16 v38, 0x0

    .line 139
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 149
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v61, v0

    .line 150
    const/4 v11, 0x0

    .line 151
    const/16 v65, 0x0

    .line 153
    const/4 v2, 0x1

    sput-boolean v2, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    .line 156
    const-string v2, "clicks"

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v2, "errors"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v2, "impressions"

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :try_start_0
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    const/4 v6, 0x0

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v61, v6

    .line 163
    const/4 v6, 0x1

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v61, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    if-eqz v25, :cond_4

    .line 172
    const-string v2, "vast"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    const-string v2, "vast"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 174
    const-string v2, "trackingEvents"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    const-string v2, "trackingEvents"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 181
    :goto_1
    const-string v6, "clicks"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 182
    const-string v6, "clicks"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 188
    :goto_2
    const-string v8, "impressions"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 189
    const-string v8, "impressions"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 195
    :goto_3
    const-string v19, "errors"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 196
    const-string v19, "errors"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 204
    :goto_4
    if-eqz v2, :cond_0

    .line 205
    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->parseTrackingEvents(Ljava/util/List;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 208
    :cond_0
    if-eqz v6, :cond_1

    .line 209
    invoke-static {v6, v13}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getAllStringsInJSONArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    .line 211
    :cond_1
    if-eqz v12, :cond_2

    .line 212
    invoke-static {v12, v14}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getAllStringsInJSONArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    .line 214
    :cond_2
    if-eqz v8, :cond_3

    .line 215
    invoke-static {v8, v15}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getAllStringsInJSONArray(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    .line 217
    :cond_3
    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_4
    const/16 v20, 0x0

    .line 227
    new-instance v14, Lcom/revmob/ads/internal/ShowAnimationConfiguration;

    invoke-direct {v14}, Lcom/revmob/ads/internal/ShowAnimationConfiguration;-><init>()V

    .line 228
    new-instance v15, Lcom/revmob/ads/internal/CloseAnimationConfiguration;

    invoke-direct {v15}, Lcom/revmob/ads/internal/CloseAnimationConfiguration;-><init>()V

    .line 230
    :try_start_1
    const-string v2, "animation"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 231
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 232
    invoke-virtual {v14, v12, v13}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 233
    invoke-virtual {v15, v12, v13}, Lcom/revmob/ads/internal/AnimationConfiguration;->setTime(J)V

    .line 235
    const-string v2, "show"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 236
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 237
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 165
    :catch_0
    move-exception v2

    .line 166
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v61, v2

    .line 167
    const/4 v2, 0x1

    const/4 v6, 0x0

    aput v6, v61, v2

    goto/16 :goto_0

    .line 179
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 186
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 193
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 200
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 239
    :cond_9
    :try_start_2
    const-string v2, "close"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 240
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_a

    .line 241
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/revmob/ads/internal/AnimationConfiguration;->addAnimation(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 243
    :cond_a
    const-string v2, "parallax_delta"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v20

    .line 248
    :goto_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 249
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 251
    :try_start_3
    const-string v8, "sound"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 252
    const-string v8, "sound"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 253
    const-string v12, "on_show"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 254
    const-string v12, "on_show"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 255
    :cond_b
    :try_start_4
    const-string v12, "on_click"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 256
    const-string v12, "on_click"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v18, v6

    .line 262
    :goto_8
    new-instance v6, Lcom/revmob/internal/HTTPHelper;

    invoke-direct {v6}, Lcom/revmob/internal/HTTPHelper;-><init>()V

    .line 263
    const/4 v8, 0x0

    .line 265
    const/4 v2, 0x0

    .line 266
    const/4 v13, 0x0

    .line 267
    const/4 v12, 0x0

    .line 268
    const/16 v35, 0x0

    .line 269
    const/16 v36, 0x0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    invoke-static/range {v76 .. v77}, Lcom/revmob/client/RevMobClient;->sett2(J)V

    .line 273
    if-nez v9, :cond_d

    if-eqz v10, :cond_14

    .line 276
    :cond_d
    if-eqz v32, :cond_e

    .line 277
    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 278
    const/4 v6, 0x1

    sput-boolean v6, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "framePortrait "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 281
    :cond_e
    if-eqz v66, :cond_27

    .line 282
    const/4 v6, 0x1

    move-object/from16 v0, v66

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 283
    const/4 v6, 0x1

    sput-boolean v6, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "frameLandscape "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    .line 346
    :cond_f
    :goto_9
    if-eqz v75, :cond_10

    .line 347
    const/4 v6, 0x1

    move-object/from16 v0, v75

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/revmob/ads/internal/StaticAssets;->setCloseButton(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_10
    if-eqz v71, :cond_20

    .line 352
    const/4 v6, 0x1

    move-object/from16 v0, v71

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 357
    :goto_a
    if-eqz v73, :cond_21

    .line 358
    const/4 v6, 0x1

    move-object/from16 v0, v73

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 364
    :goto_b
    if-eqz v74, :cond_22

    .line 365
    const/4 v6, 0x1

    move-object/from16 v0, v74

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 371
    :goto_c
    :try_start_5
    const-string v6, "rewarded"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 376
    :goto_d
    if-eqz v72, :cond_23

    .line 377
    const/4 v6, 0x1

    move-object/from16 v0, v72

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 381
    :goto_e
    if-eqz v25, :cond_24

    .line 382
    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v30

    .line 383
    if-eqz v67, :cond_11

    if-eqz v68, :cond_11

    .line 384
    const/4 v6, 0x1

    move-object/from16 v0, v67

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 385
    const/4 v6, 0x1

    move-object/from16 v0, v68

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 386
    if-eqz v39, :cond_11

    .line 387
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v44, v0

    .line 388
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v42, v0

    .line 391
    :cond_11
    if-eqz v69, :cond_12

    .line 392
    const/4 v6, 0x1

    move-object/from16 v0, v69

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v41

    .line 393
    if-eqz v41, :cond_12

    .line 394
    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v48, v0

    .line 395
    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v46, v0

    .line 401
    :cond_12
    :goto_f
    if-eqz v2, :cond_13

    .line 402
    const/16 v35, 0x0

    .line 403
    const/16 v36, 0x0

    .line 406
    :cond_13
    sget-boolean v2, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    if-eqz v2, :cond_25

    .line 407
    new-instance v2, Lcom/revmob/ads/fullscreen/client/FullscreenData;

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v65}, Lcom/revmob/ads/fullscreen/client/FullscreenData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/revmob/RevMobAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/revmob/ads/internal/AnimationConfiguration;Lcom/revmob/ads/internal/AnimationConfiguration;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IDIILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DDDDLjava/lang/String;Ljava/lang/String;IIIIIIIII[IDIZ)V

    .line 415
    :goto_10
    return-object v2

    .line 258
    :catch_1
    move-exception v8

    move-object/from16 v18, v6

    :goto_11
    move-object/from16 v19, v2

    goto/16 :goto_8

    .line 287
    :cond_14
    if-nez v7, :cond_1f

    .line 288
    if-eqz v30, :cond_1d

    if-eqz v31, :cond_1d

    .line 291
    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 292
    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 293
    if-eqz v13, :cond_1c

    if-eqz v12, :cond_1c

    .line 294
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 295
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    .line 296
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 297
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 299
    move/from16 v0, v30

    move/from16 v1, v37

    if-eq v0, v1, :cond_15

    move/from16 v0, v38

    if-ne v0, v6, :cond_26

    .line 300
    :cond_15
    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_16

    const/4 v6, 0x2

    move/from16 v0, v26

    if-eq v0, v6, :cond_17

    :cond_16
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    const/4 v6, 0x1

    move/from16 v0, v26

    if-ne v0, v6, :cond_1b

    .line 301
    :cond_17
    const/4 v13, 0x0

    .line 302
    const/4 v12, 0x0

    .line 303
    const/16 v65, 0x1

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    .line 310
    :goto_12
    if-eqz v61, :cond_19

    const/4 v6, 0x0

    aget v6, v61, v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    aget v6, v61, v6

    if-eqz v6, :cond_19

    .line 311
    const/4 v6, 0x0

    aget v6, v61, v6

    move/from16 v0, v37

    if-eq v0, v6, :cond_18

    const/4 v6, 0x1

    aget v6, v61, v6

    move/from16 v0, v37

    if-eq v0, v6, :cond_18

    const/4 v6, 0x0

    aget v6, v61, v6

    rem-int v6, v37, v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    aget v6, v61, v6

    rem-int v6, v37, v6

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    aget v6, v61, v6

    rem-int v6, v6, v37

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    aget v6, v61, v6

    rem-int v6, v6, v37

    if-eqz v6, :cond_18

    .line 312
    const/4 v2, 0x1

    .line 314
    :cond_18
    const/4 v6, 0x0

    aget v6, v61, v6

    move/from16 v0, v38

    if-eq v0, v6, :cond_19

    const/4 v6, 0x1

    aget v6, v61, v6

    move/from16 v0, v38

    if-eq v0, v6, :cond_19

    const/4 v6, 0x0

    aget v6, v61, v6

    rem-int v6, v38, v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    aget v6, v61, v6

    rem-int v6, v38, v6

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    aget v6, v61, v6

    rem-int v6, v6, v38

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    aget v6, v61, v6

    rem-int v6, v6, v38

    if-eqz v6, :cond_19

    .line 315
    const/4 v2, 0x1

    .line 321
    :cond_19
    :goto_13
    if-nez v2, :cond_f

    .line 322
    if-eqz v32, :cond_1a

    .line 323
    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 324
    const/4 v6, 0x1

    sput-boolean v6, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    .line 326
    :cond_1a
    if-eqz v66, :cond_f

    .line 327
    const/4 v6, 0x1

    move-object/from16 v0, v66

    invoke-static {v0, v6}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 328
    const/4 v6, 0x1

    sput-boolean v6, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    goto/16 :goto_9

    .line 305
    :cond_1b
    const/16 v64, 0x1

    .line 307
    const/4 v11, 0x1

    move v2, v11

    move-object v11, v13

    goto/16 :goto_12

    .line 319
    :cond_1c
    const/16 v65, 0x1

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto :goto_13

    .line 333
    :cond_1d
    if-eqz v70, :cond_1e

    .line 334
    const/4 v2, 0x1

    move-object/from16 v0, v70

    invoke-static {v0, v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->downloadFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 336
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto/16 :goto_9

    .line 339
    :cond_1e
    const/4 v2, 0x0

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto/16 :goto_9

    .line 343
    :cond_1f
    invoke-virtual {v6, v7}, Lcom/revmob/internal/HTTPHelper;->downloadHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto/16 :goto_9

    .line 354
    :cond_20
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 360
    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_b

    .line 367
    :cond_22
    const/16 v32, 0x0

    goto/16 :goto_c

    .line 379
    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 400
    :cond_24
    const/16 v30, 0x0

    goto/16 :goto_f

    .line 413
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 372
    :catch_2
    move-exception v6

    goto/16 :goto_d

    .line 258
    :catch_3
    move-exception v8

    move-object/from16 v18, v6

    goto/16 :goto_11

    .line 244
    :catch_4
    move-exception v2

    goto/16 :goto_7

    :cond_26
    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto/16 :goto_12

    :cond_27
    move/from16 v78, v11

    move-object v11, v2

    move/from16 v2, v78

    goto/16 :goto_9
.end method

.method private static downloadFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 6

    .prologue
    .line 427
    .line 429
    const/4 v1, 0x0

    .line 431
    new-instance v2, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;

    invoke-direct {v2}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;-><init>()V

    .line 434
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 435
    if-nez p1, :cond_1

    .line 436
    sget-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    move-object v3, v0

    .line 443
    :goto_0
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/revmob/ads/fullscreen/client/AeSimpleSHA1;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v2, v0

    .line 453
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 454
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 464
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 469
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 472
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 474
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 475
    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 489
    :catch_0
    move-exception v1

    .line 492
    :goto_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->success:Z

    .line 493
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 496
    :cond_0
    :goto_4
    return-object v0

    .line 438
    :cond_1
    :try_start_4
    sget-object v0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 446
    :catch_1
    move-exception v2

    .line 449
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v0

    goto :goto_1

    .line 479
    :cond_2
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 480
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 481
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 489
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3
.end method

.method private static parseTrackingEvents(Ljava/util/List;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 501
    move v1, v2

    :goto_0
    const/16 v0, 0xd

    if-ge v1, v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 503
    packed-switch v1, :pswitch_data_0

    .line 544
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 505
    :pswitch_0
    const-string v0, "midpoint"

    goto :goto_1

    .line 508
    :pswitch_1
    const-string v0, "thirdQuartile"

    goto :goto_1

    .line 511
    :pswitch_2
    const-string v0, "complete"

    goto :goto_1

    .line 514
    :pswitch_3
    const-string v0, "creativeView"

    goto :goto_1

    .line 517
    :pswitch_4
    const-string v0, "start"

    goto :goto_1

    .line 520
    :pswitch_5
    const-string v0, "firstQuartile"

    goto :goto_1

    .line 523
    :pswitch_6
    const-string v0, "mute"

    goto :goto_1

    .line 526
    :pswitch_7
    const-string v0, "unmute"

    goto :goto_1

    .line 529
    :pswitch_8
    const-string v0, "close"

    goto :goto_1

    .line 532
    :pswitch_9
    const-string v0, "pause"

    goto :goto_1

    .line 535
    :pswitch_a
    const-string v0, "resume"

    goto :goto_1

    .line 538
    :pswitch_b
    const-string v0, "fullscreenPortraitView"

    goto :goto_1

    .line 541
    :pswitch_c
    const-string v0, "fullscreenLandscapeView"

    goto :goto_1

    :cond_0
    move v1, v2

    .line 548
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0, v3}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getAllLinksByRel(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 554
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 548
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 560
    :cond_2
    return-void

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getShallUpdateData()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    return v0
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-static {p1, v0}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->createData(Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/fullscreen/client/FullscreenData;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    if-eqz v1, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/revmob/client/RevMobClient;->sett3(J)V

    .line 53
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->ad:Lcom/revmob/ads/internal/Ad;

    invoke-interface {v1, v0}, Lcom/revmob/ads/internal/Ad;->updateWithData(Lcom/revmob/client/AdData;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    if-nez v0, :cond_2

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->publisherListener:Lcom/revmob/RevMobAdsListener;

    const-string v1, "An error occurred during the ad download."

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShallUpdateData(Z)V
    .locals 0

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->shallUpdateData:Z

    .line 420
    return-void
.end method
