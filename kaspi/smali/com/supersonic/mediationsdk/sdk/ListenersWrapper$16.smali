.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$200(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 318
    return-void
.end method
