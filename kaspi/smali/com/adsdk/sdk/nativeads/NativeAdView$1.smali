.class Lcom/adsdk/sdk/nativeads/NativeAdView$1;
.super Ljava/lang/Object;
.source "NativeAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/nativeads/NativeAdView;->createOnNativeAdClickListener(Lcom/adsdk/sdk/nativeads/NativeAd;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

.field private final synthetic val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdView;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdView;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$1(Lcom/adsdk/sdk/nativeads/NativeAdView;)V

    .line 126
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->handleClick()V

    .line 127
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$2(Lcom/adsdk/sdk/nativeads/NativeAdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 128
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v3}, Lcom/adsdk/sdk/nativeads/NativeAd;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :cond_0
    return-void
.end method
