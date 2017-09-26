.class public Lcom/revmob/ads/fullscreen/RevMobFullscreen;
.super Ljava/lang/Object;
.source "RevMobFullscreen.java"

# interfaces
.implements Lcom/revmob/ads/internal/Ad;


# instance fields
.field private activity:Landroid/app/Activity;

.field public autoshow:Z

.field private data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

.field private fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

.field private isRewarded:Z

.field private isVideo:Z

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private state:Lcom/revmob/ads/internal/AdState;

.field private videoFollowAppOrientation:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->autoshow:Z

    .line 26
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    .line 27
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    .line 29
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->videoFollowAppOrientation:Z

    .line 32
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 34
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 35
    new-instance v0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    invoke-direct {v0, p0, p2, p1}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    .line 36
    return-void
.end method

.method private isLoaded()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iput-boolean v1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->autoshow:Z

    .line 246
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 247
    return-void
.end method

.method public load(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public load(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 69
    if-ne p2, v3, :cond_2

    .line 70
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    .line 71
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    sget-object v0, Lcom/revmob/ads/internal/AdState;->LOADING:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 80
    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Fullscreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->getShallUpdateData()Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    new-instance v0, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    .line 84
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    .line 88
    :goto_2
    if-nez p2, :cond_6

    .line 89
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/revmob/client/RevMobClient;->fetchFullscreen(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 96
    :cond_1
    :goto_3
    return-void

    .line 72
    :cond_2
    if-ne p2, v4, :cond_3

    .line 73
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    .line 74
    iput-boolean v3, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    goto :goto_0

    .line 76
    :cond_3
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    goto :goto_0

    .line 80
    :cond_4
    const-string v0, "Loading Fullscreen"

    goto :goto_1

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    goto :goto_2

    .line 90
    :cond_6
    if-eq p2, v3, :cond_7

    if-ne p2, v4, :cond_8

    .line 91
    :cond_7
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/revmob/client/RevMobClient;->fetchVideo(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;I)V

    goto :goto_3

    .line 93
    :cond_8
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/revmob/client/RevMobClient;->fetchVideoOrFullscreen(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    goto :goto_3
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public loadFullscreen(I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public loadFullscreen(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public loadVideo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public setAutoShow(Z)V
    .locals 0

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->autoshow:Z

    .line 239
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 135
    iput-boolean v4, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->autoshow:Z

    .line 137
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_8

    .line 139
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 140
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move v1, v2

    move v3, v2

    .line 141
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 143
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_0

    move v3, v4

    .line 141
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isFullscreenActivityAvailable(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    sget-object v0, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 154
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-nez v0, :cond_2

    .line 155
    iput-boolean v4, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->videoFollowAppOrientation:Z

    .line 157
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    const-class v4, Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v1, "com.revmob.ads.fullscreen.adUrl"

    iget-object v4, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v4}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getClickUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "followAppOrientation"

    iget-boolean v4, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->videoFollowAppOrientation:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v1, "isRewarded"

    iget-boolean v4, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    if-eqz v3, :cond_5

    .line 162
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_3

    .line 170
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-nez v0, :cond_6

    .line 171
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    .line 176
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-nez v0, :cond_4

    .line 177
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->reportImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_4
    :goto_2
    return-void

    .line 165
    :cond_5
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    goto :goto_2

    .line 172
    :cond_6
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoStarted()V

    goto :goto_1

    .line 179
    :cond_7
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 180
    const-string v0, "You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->LOADING:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_9

    .line 183
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 184
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->fullscreenClientListener:Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;

    invoke-virtual {v0, v2}, Lcom/revmob/ads/fullscreen/client/FullscreenClientListener;->setShallUpdateData(Z)V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->load(Ljava/lang/String;I)V

    goto :goto_2

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_4

    .line 189
    const-string v0, "The ad is not completely loaded yet. As soon as it is loaded, it is going to be displayed automatically."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public showRewardedVideo()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    .line 229
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->showVideo()V

    .line 230
    return-void
.end method

.method public showRewardedVideo(Z)V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    .line 234
    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->showVideo(Z)V

    .line 235
    return-void
.end method

.method public showVideo()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->videoFollowAppOrientation:Z

    .line 200
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->show()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 203
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoNotCompletelyLoaded()V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoNotCompletelyLoaded()V

    goto :goto_0
.end method

.method public showVideo(Z)V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iput-boolean p1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->videoFollowAppOrientation:Z

    .line 215
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->show()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoNotCompletelyLoaded()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoNotCompletelyLoaded()V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/AdData;)V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->state:Lcom/revmob/ads/internal/AdState;

    .line 104
    check-cast p1, Lcom/revmob/ads/fullscreen/client/FullscreenData;

    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    .line 105
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->addLoadedFullscreen(Lcom/revmob/ads/fullscreen/client/FullscreenData;)V

    .line 106
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-eqz v0, :cond_3

    .line 109
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isRewarded:Z

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoLoaded()V

    .line 118
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->autoshow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->isVideo:Z

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->show()V

    .line 121
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoLoaded()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobFullscreen;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    goto :goto_0
.end method
