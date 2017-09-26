.class Lcom/adsdk/sdk/nativeads/RequestNativeAd$4;
.super Ljava/lang/Object;
.source "RequestNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V
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
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$4;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$4;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$6(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->adFailedToLoad()V

    .line 254
    return-void
.end method
