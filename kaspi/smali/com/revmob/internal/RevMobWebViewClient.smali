.class public Lcom/revmob/internal/RevMobWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RevMobWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;


# direct methods
.method public constructor <init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/revmob/internal/RevMobWebViewClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 20
    iput-object p2, p0, Lcom/revmob/internal/RevMobWebViewClient;->clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

    invoke-interface {v0, p1, p2}, Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;->handlePageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->publisherListener:Lcom/revmob/RevMobAdsListener;

    const-string v1, "Content was not loaded"

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/revmob/internal/RevMobWebViewClient;->clickListener:Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;

    invoke-interface {v0, p1, p2}, Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;->handleClick(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
