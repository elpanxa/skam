.class public Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;
.super Ljava/lang/Object;
.source "FullscreenClickListener.java"


# instance fields
.field protected clicked:Z

.field protected final fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

.field protected relativePosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->clicked:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->relativePosition:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    .line 16
    return-void
.end method


# virtual methods
.method public defaultClickHandler()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    iget-boolean v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->clicked:Z

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->clicked:Z

    .line 50
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 51
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->addProgressBar()V

    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->defaultClickHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->openMarket()V

    .line 22
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->defaultClickHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->openMarket(Ljava/lang/String;)V

    .line 29
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClose()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->clicked:Z

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return v1

    .line 36
    :cond_0
    iput-boolean v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->clicked:Z

    .line 37
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->close()V

    goto :goto_0
.end method

.method public openMarket()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    new-instance v1, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;-><init>(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public openMarket(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->relativePosition:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->openMarket()V

    .line 58
    return-void
.end method
