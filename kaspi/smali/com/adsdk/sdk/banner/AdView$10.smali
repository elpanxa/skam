.class Lcom/adsdk/sdk/banner/AdView$10;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$10;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$10;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$10;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$10;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$5(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    .line 389
    :cond_0
    return-void
.end method
