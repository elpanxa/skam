.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->onShowOfferWallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$5;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onOWShowSuccess()V

    .line 1412
    return-void
.end method
