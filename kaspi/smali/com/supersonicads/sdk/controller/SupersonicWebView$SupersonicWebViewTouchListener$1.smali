.class Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;
.super Landroid/os/CountDownTimer;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;JJ)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Event Timer Finish"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$700(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isRemoveCloseEventHandler:Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$702(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "forceClose"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->engageEnd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$SupersonicWebViewTouchListener;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Event Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
