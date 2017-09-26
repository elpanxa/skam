.class Lcom/adsdk/sdk/customevents/VungleFullscreen$1;
.super Ljava/lang/Object;
.source "VungleFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/VungleFullscreen;->loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/VungleFullscreen;->vunglePub:Lcom/vungle/publisher/VunglePub;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$0(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isCachedAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$1(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    invoke-static {v0, v2}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$2(Lcom/adsdk/sdk/customevents/VungleFullscreen;Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/VungleFullscreen;->alreadyReportedAdLoadStatus:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$1(Lcom/adsdk/sdk/customevents/VungleFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/VungleFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/VungleFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/VungleFullscreen;

    invoke-static {v0, v2}, Lcom/adsdk/sdk/customevents/VungleFullscreen;->access$2(Lcom/adsdk/sdk/customevents/VungleFullscreen;Z)V

    goto :goto_0
.end method
