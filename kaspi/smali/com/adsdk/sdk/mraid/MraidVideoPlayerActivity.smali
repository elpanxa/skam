.class public Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;
.super Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;


# static fields
.field private static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field static final VIDEO_URL:Ljava/lang/String; = "video_url"


# instance fields
.field private mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method private broadcastVastInterstitialAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method static createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-string v1, "video_view_class_name"

    const-string v2, "mraid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    return-object v0
.end method

.method private createVideoView()Lcom/adsdk/sdk/mraid/BaseVideoView;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const-string v1, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/adsdk/sdk/mraid/MraidVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    .line 174
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v0, "MraidVideoPlayerActivity"

    const-string v1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static startVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static/range {p0 .. p9}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v0, "MoPub"

    const-string v1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createVideoView()Lcom/adsdk/sdk/mraid/BaseVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    .line 132
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->hideInterstitialCloseButton()V

    .line 140
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->start()V

    .line 142
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastVastInterstitialAction(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastVastInterstitialAction(Ljava/lang/String;)V

    .line 160
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->onPause()V

    .line 154
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->onResume()V

    .line 149
    return-void
.end method

.method public showCloseButton()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    .line 185
    return-void
.end method

.method public videoClicked()V
    .locals 1

    .prologue
    .line 207
    const-string v0, "com.mopub.action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public videoCompleted(Z)V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    .line 203
    :cond_0
    return-void
.end method

.method public videoError(Z)V
    .locals 2

    .prologue
    .line 189
    const-string v0, "MoPub"

    const-string v1, "Error: video can not be played."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    .line 191
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    .line 195
    :cond_0
    return-void
.end method
