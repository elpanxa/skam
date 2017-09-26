.class Lcom/revmob/ads/banner/RevMobBanner$4;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->addHtmlAdView(Z)V
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
    .line 201
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iput-boolean p2, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->val$v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleClick(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 204
    const-string v0, "#click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->val$v:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$700(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$500(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 210
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->onClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$700(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$4;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->adView2:Landroid/view/View;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public handlePageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
