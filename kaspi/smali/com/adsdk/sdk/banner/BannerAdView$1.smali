.class Lcom/adsdk/sdk/banner/BannerAdView$1;
.super Landroid/webkit/WebView;
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
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 78
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/BannerAdView;->access$0(Lcom/adsdk/sdk/banner/BannerAdView;Z)V

    .line 83
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
