.class Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;
.super Ljava/lang/Object;
.source "RequestNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadOriginalNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v1, 0x1

    .line 153
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->requestResultJson:Ljava/lang/String;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$0(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v0, "imageassets"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 155
    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 159
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    :cond_0
    const-string v0, "textassets"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 171
    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 174
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v0

    const-string v4, "click_url"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/nativeads/NativeAd;->setClickUrl(Ljava/lang/String;)V

    .line 183
    const-string v0, "trackers"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_7

    move v0, v2

    .line 185
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v0, v4, :cond_4

    move v0, v1

    .line 199
    :goto_3
    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v1

    # invokes: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$2(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 204
    :goto_4
    return-void

    .line 160
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 162
    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    const-string v8, "width"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 164
    const-string v9, "height"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 165
    new-instance v9, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    invoke-direct {v9, v7, v8, v6}, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;-><init>(Ljava/lang/String;II)V

    .line 166
    iget-object v6, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v6}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Lcom/adsdk/sdk/nativeads/NativeAd;->addImageAsset(Ljava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;)V

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    move v0, v2

    .line 196
    goto :goto_3

    .line 175
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    iget-object v7, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v7}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/adsdk/sdk/nativeads/NativeAd;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_5

    .line 188
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    new-instance v6, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;

    invoke-direct {v6, v5, v4}, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v4}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTrackers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # invokes: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$3(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)V

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_3
.end method
