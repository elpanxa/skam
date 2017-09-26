.class Lcom/adsdk/sdk/customevents/VungleFullscreen$2;
.super Ljava/lang/Object;
.source "VungleFullscreen.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/VungleFullscreen;->createListener()Lcom/vungle/publisher/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/VungleFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 74
    :cond_1
    return-void
.end method

.method public onAdStart()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->reportImpression()V

    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 82
    :cond_0
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$1(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$2(Lcom/adsdk/sdk/customevents/VungleFullscreen;Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCachedAdAvailable()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$1(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$2(Lcom/adsdk/sdk/customevents/VungleFullscreen;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
