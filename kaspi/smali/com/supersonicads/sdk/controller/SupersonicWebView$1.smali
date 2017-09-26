.class Lcom/supersonicads/sdk/controller/SupersonicWebView$1;
.super Landroid/os/CountDownTimer;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->downloadController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;JJ)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mGlobalControllerTimeFinish:Z
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Z)Z

    .line 405
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$1;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method
