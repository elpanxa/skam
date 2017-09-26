.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->onShowInterstitialFail(Ljava/lang/String;)V
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
    .line 1621
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;->val$message:Ljava/lang/String;

    .line 1624
    if-nez v0, :cond_0

    .line 1625
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$11;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v1, v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnInitInterstitialListener:Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$2700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonicads/sdk/listeners/OnInterstitialListener;->onInterstitialShowFail(Ljava/lang/String;)V

    .line 1628
    return-void
.end method
