.class Lcom/adsdk/sdk/customevents/InMobiNative$1$1;
.super Ljava/lang/Object;
.source "InMobiNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/InMobiNative$1;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

.field private final synthetic val$response:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/InMobiNative$1;Lcom/inmobi/monetization/IMNative;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    iput-object p2, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->val$response:Lcom/inmobi/monetization/IMNative;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lorg/json/JSONTokener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->val$response:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMNative;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    const-string v2, "headline"

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/customevents/InMobiNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    const-string v2, "description"

    const-string v3, "description"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/customevents/InMobiNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    const-string v2, "cta"

    const-string v3, "cta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/customevents/InMobiNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    const-string v2, "rating"

    const-string v3, "rating"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/customevents/InMobiNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "screenshots"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v2

    const-string v3, "main"

    invoke-virtual {v2, v3, v0}, Lcom/adsdk/sdk/customevents/InMobiNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3, v0}, Lcom/adsdk/sdk/customevents/InMobiNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    const-string v2, "landingURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiNative;->setClickUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->val$response:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiNative;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative;Lcom/inmobi/monetization/IMNative;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/customevents/InMobiNative;->isNativeAdValid(Lcom/adsdk/sdk/nativeads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 98
    :cond_2
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/InMobiNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;->access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_0
.end method
