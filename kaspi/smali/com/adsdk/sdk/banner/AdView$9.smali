.class Lcom/adsdk/sdk/banner/AdView$9;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->notifyAdClosed()V
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
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$9;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$9;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$9;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$9;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$5(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    .line 377
    :cond_0
    return-void
.end method
