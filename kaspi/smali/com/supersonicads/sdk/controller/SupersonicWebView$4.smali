.class Lcom/supersonicads/sdk/controller/SupersonicWebView$4;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2699
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    :try_start_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2703
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5800(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2704
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2732
    :goto_0
    return-void

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2728
    :catch_0
    move-exception v0

    .line 2729
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectJavascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2709
    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 2712
    :try_start_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2714
    :catch_1
    move-exception v0

    .line 2715
    :try_start_3
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2717
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2718
    :catch_2
    move-exception v0

    .line 2719
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2721
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2724
    :cond_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2725
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$4;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5802(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
