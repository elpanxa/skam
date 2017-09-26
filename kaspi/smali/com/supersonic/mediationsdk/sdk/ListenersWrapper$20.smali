.class Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$supersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    iput-object p2, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;->val$supersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;->this$0:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->access$300(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;->val$supersonicError:Lcom/supersonic/mediationsdk/logger/SupersonicError;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 386
    return-void
.end method
