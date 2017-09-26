.class Lcom/adsdk/sdk/customevents/FacebookNative$1$1;
.super Ljava/lang/Object;
.source "FacebookNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/FacebookNative$1;->onAdLoaded(Lcom/facebook/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

.field private final synthetic val$ad:Lcom/facebook/ads/Ad;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/FacebookNative$1;Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    iput-object p2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->val$ad:Lcom/facebook/ads/Ad;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->val$ad:Lcom/facebook/ads/Ad;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "headline"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "cta"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "rating"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    iget-object v3, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v3}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v3

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v3}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v3

    # invokes: Lcom/adsdk/sdk/customevents/FacebookNative;->readRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$1(Lcom/adsdk/sdk/customevents/FacebookNative;Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "socialContextForAd"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addTextAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "icon"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    const-string v1, "main"

    iget-object v2, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v2

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative;->facebookNative:Lcom/facebook/ads/NativeAd;
    invoke-static {v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/customevents/FacebookNative;->addImageAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/customevents/FacebookNative;->isNativeAdValid(Lcom/adsdk/sdk/nativeads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    goto/16 :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;->this$1:Lcom/adsdk/sdk/customevents/FacebookNative$1;

    # getter for: Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/FacebookNative$1;->access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto/16 :goto_0
.end method
