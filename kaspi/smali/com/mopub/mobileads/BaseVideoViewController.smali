.class public abstract Lcom/mopub/mobileads/BaseVideoViewController;
.super Ljava/lang/Object;
.source "BaseVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    }
.end annotation


# instance fields
.field private final mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

.field private mBroadcastIdentifier:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 2
    .param p2    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBroadcastIdentifier:Ljava/lang/Long;

    .line 37
    iput-object p3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 38
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    .line 39
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method broadcastAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBroadcastIdentifier:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBroadcastIdentifier:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "Tried to broadcast a video event without a braodcast identifier to send to."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected abstract getVideoView()Landroid/widget/VideoView;
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected abstract onBackPressed()V
.end method

.method protected abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected onCreate()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getVideoView()Landroid/widget/VideoView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected abstract onDestroy()V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected videoCompleted(Z)V
    .locals 1

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 89
    :cond_0
    return-void
.end method

.method protected videoError(Z)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "Video cannot be played."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 79
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 83
    :cond_0
    return-void
.end method
