.class Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;
.super Ljava/lang/Object;
.source "RequestNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadCustomEventNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

.field private final synthetic val$event:Lcom/adsdk/sdk/customevents/CustomEvent;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/customevents/CustomEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$4(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/customevents/CustomEventNative;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$5(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v3}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v4}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/customevents/CustomEventNative;->createNativeAd(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method
