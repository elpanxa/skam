.class Lcom/adsdk/sdk/mraid/MraidVideoView;
.super Lcom/adsdk/sdk/mraid/BaseVideoView;
.source "MraidVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;

    invoke-direct {v0, p0, p3}, Lcom/adsdk/sdk/mraid/MraidVideoView$1;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoView;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 54
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView$2;

    invoke-direct {v0, p0, p3}, Lcom/adsdk/sdk/mraid/MraidVideoView$2;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoView;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 64
    const-string v0, "video_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 65
    return-void
.end method
