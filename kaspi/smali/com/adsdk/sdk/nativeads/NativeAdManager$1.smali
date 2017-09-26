.class Lcom/adsdk/sdk/nativeads/NativeAdManager$1;
.super Ljava/lang/Object;
.source "NativeAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;-><init>()V

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$0(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$1(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v3}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$2(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$3(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->sendRequest(Lcom/adsdk/sdk/nativeads/NativeAdRequest;Landroid/os/Handler;Lcom/adsdk/sdk/nativeads/NativeAdListener;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/adsdk/sdk/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "ADSDK"

    const-string v2, "Exception in native ad request thread"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
