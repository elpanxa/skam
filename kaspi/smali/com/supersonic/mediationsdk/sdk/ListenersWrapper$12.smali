.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialAvailability(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Z)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    iput-boolean p2, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$200(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;->val$available:Z

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAvailability(Z)V

    .line 258
    return-void
.end method
