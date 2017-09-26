.class Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->onGenericFunctionFail(Ljava/lang/String;)V
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
    .line 1677
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mOnGenericFunctionListener:Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$JSInterface$13;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;->onGFFail(Ljava/lang/String;)V

    .line 1680
    return-void
.end method
