.class Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;
.super Ljava/lang/Object;
.source "MillennialFullscreen.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MillennialFullscreen;->createListener()Lcom/millennialmedia/android/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MillennialFullscreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    .line 95
    :cond_0
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->reportImpression()V

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    .line 88
    :cond_0
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    # getter for: Lcom/adsdk/sdk/customevents/MillennialFullscreen;->wasTapped:Z
    invoke-static {v0}, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->access$0(Lcom/adsdk/sdk/customevents/MillennialFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->access$1(Lcom/adsdk/sdk/customevents/MillennialFullscreen;Z)V

    .line 76
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    .line 67
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MillennialFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/MillennialFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MillennialFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    .line 60
    :cond_0
    return-void
.end method
