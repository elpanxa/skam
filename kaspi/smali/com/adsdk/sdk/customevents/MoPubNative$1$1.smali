.class Lcom/adsdk/sdk/customevents/MoPubNative$1$1;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MoPubNative$1;->onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

.field private final synthetic val$response:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MoPubNative$1;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    iput-object p2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/customevents/MoPubNative;->setClickUrl(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    const-string v1, "main"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/MoPubNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    const-string v1, "icon"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/MoPubNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    const-string v1, "cta"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/MoPubNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/MoPubNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    const-string v1, "headline"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/MoPubNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->val$response:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeResponse;->getExtras()Ljava/util/Map;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/customevents/MoPubNative;->isNativeAdValid(Lcom/adsdk/sdk/nativeads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 76
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adsdk/sdk/customevents/MoPubNative;->addImpressionTracker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/adsdk/sdk/customevents/MoPubNative;->addExtraAsset(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/MoPubNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MoPubNative$1;->access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_2
.end method
