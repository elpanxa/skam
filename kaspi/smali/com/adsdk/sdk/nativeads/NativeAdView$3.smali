.class Lcom/adsdk/sdk/nativeads/NativeAdView$3;
.super Ljava/lang/Object;
.source "NativeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/NativeAdView;->notifyImpression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$3;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$3;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$3(Lcom/adsdk/sdk/nativeads/NativeAdView;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->impression()V

    .line 249
    return-void
.end method
