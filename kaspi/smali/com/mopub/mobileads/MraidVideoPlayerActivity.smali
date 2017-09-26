.class public Lcom/mopub/mobileads/MraidVideoPlayerActivity;
.super Lcom/mopub/mobileads/BaseVideoPlayerActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;


# instance fields
.field private mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBroadcastIdentifier:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;-><init>()V

    return-void
.end method

.method private createVideoViewController(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const-string v1, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v0, Lcom/mopub/mraid/MraidVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v0, Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/mopub/nativeads/NativeVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 156
    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getBaseVideoViewController()Lcom/mopub/mobileads/BaseVideoViewController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoViewController;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onBackPressed()V

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onBackPressed()V

    .line 96
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->createVideoViewController(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 48
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 42
    iget-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    const-string v2, "com.mopub.action.interstitial.fail"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onDestroy()V

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onPause()V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onResume()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 131
    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBaseVideoViewController(Lcom/mopub/mobileads/BaseVideoViewController;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 167
    return-void
.end method
