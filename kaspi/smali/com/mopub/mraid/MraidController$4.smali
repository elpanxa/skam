.class Lcom/mopub/mraid/MraidController$4;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handleClose()V

    .line 296
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1    # Landroid/webkit/ConsoleMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onExpand(Ljava/net/URI;Z)V
    .locals 0
    .param p1    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 291
    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/JsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onOpen(Ljava/net/URI;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->handleOpen(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onPageFailedToLoad()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onPageLoaded()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handleTwoPartPageLoad()V

    .line 257
    return-void
.end method

.method public onPlayVideo(Ljava/net/URI;)V
    .locals 2
    .param p1    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->handleShowVideo(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 2
    .param p5    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    const-string v1, "Not allowed to resize from an expanded state"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V

    .line 307
    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 301
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewability(Z)V

    .line 268
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    # getter for: Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;
    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewability(Z)V

    .line 269
    return-void
.end method
