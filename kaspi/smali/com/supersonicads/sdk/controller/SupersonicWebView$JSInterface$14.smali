.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->onGetUserCreditsFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;->val$message:Ljava/lang/String;

    .line 2141
    if-nez v0, :cond_0

    .line 2142
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 2144
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$14;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v1, v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnOfferWallListener:Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$3100(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonicads/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    .line 2145
    return-void
.end method
