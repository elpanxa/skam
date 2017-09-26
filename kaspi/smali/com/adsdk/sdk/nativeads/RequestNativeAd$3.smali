.class Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;
.super Ljava/lang/Object;
.source "RequestNativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

.field private final synthetic val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;->this$0:Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    # getter for: Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->access$6(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->adLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 238
    return-void
.end method
