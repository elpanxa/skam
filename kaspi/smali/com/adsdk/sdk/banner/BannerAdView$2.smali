.class Lcom/adsdk/sdk/banner/BannerAdView$2;
.super Landroid/webkit/WebViewClient;
.source "BannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 98
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->wasUserAction:Z
    invoke-static {v1}, Lcom/adsdk/sdk/banner/BannerAdView;->access$1(Lcom/adsdk/sdk/banner/BannerAdView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/BannerAdView;->access$2(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getSkipOverlay()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # invokes: Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/adsdk/sdk/banner/BannerAdView;->access$3(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V

    .line 104
    const-string v1, "TouchListener"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    const-string v1, "TouchListener"

    const-string v2, "default"

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # invokes: Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V
    invoke-static {v1}, Lcom/adsdk/sdk/banner/BannerAdView;->access$4(Lcom/adsdk/sdk/banner/BannerAdView;)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
