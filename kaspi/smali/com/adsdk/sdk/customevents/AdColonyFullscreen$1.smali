.class Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;
.super Ljava/lang/Object;
.source "AdColonyFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->loadFullscreen(Landroid/app/Activity;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$0(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$1(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$2(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;Z)V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$1(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$2(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;Z)V

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method
