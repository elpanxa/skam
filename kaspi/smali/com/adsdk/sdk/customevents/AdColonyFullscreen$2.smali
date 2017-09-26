.class Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;
.super Ljava/lang/Object;
.source "AdColonyFullscreen.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->createListener()Lcom/jirbo/adcolony/AdColonyAdListener;
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
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->notShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reported:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$1(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->access$2(Lcom/adsdk/sdk/customevents/AdColonyFullscreen;Z)V

    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->reportImpression()V

    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen$2;->this$0:Lcom/adsdk/sdk/customevents/AdColonyFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdColonyFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 85
    :cond_0
    return-void
.end method
