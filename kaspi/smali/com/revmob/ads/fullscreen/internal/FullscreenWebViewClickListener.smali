.class public Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;
.super Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;
.source "FullscreenWebViewClickListener.java"

# interfaces
.implements Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 12
    return-void
.end method


# virtual methods
.method public handleClick(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    const-string v0, "#close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;->onClose()Z

    move-result v0

    .line 21
    :goto_0
    return v0

    .line 18
    :cond_0
    const-string v0, "#click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;->onClick()Z

    move-result v0

    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handlePageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenWebViewClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->removeProgressBar()V

    .line 27
    return-void
.end method
