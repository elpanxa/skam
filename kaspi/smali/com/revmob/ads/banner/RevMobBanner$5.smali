.class Lcom/revmob/ads/banner/RevMobBanner$5;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->addDSPAdView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/RevMobBanner;

.field final synthetic val$v:Z


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iput-boolean p2, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->val$v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleClick(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->data:Lcom/revmob/ads/banner/client/BannerData;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$200(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/client/BannerData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/revmob/ads/banner/client/BannerData;->setDspUrl(Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->val$v:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$700(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$500(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 239
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$700(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$5;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public handlePageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
