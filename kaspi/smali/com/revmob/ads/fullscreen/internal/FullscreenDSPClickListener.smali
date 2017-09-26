.class public Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;
.super Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;
.source "FullscreenDSPClickListener.java"

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
    .line 21
    const-string v0, "#close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "inneractive-skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;->onClose()Z

    move-result v0

    .line 26
    :goto_0
    return v0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0, p2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->setDspUrl(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;->onClick()Z

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenDSPClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->removeProgressBar()V

    .line 33
    return-void
.end method
