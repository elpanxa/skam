.class Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 620
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # invokes: Lcom/supersonicads/sdk/controller/SupersonicWebView;->getBaseContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1500(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 621
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .prologue
    .line 579
    const-string v0, "MyApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    .prologue
    .line 565
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 567
    new-instance v0, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 568
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 569
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 570
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 572
    const-string v0, "onCreateWindow"

    const-string v1, "onCreateWindow"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 629
    const-string v0, "Test"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;

    .line 640
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 643
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 588
    const-string v0, "Test"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    const-string v0, "Test"

    const-string v1, "mCustomView != null"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 616
    :goto_0
    return-void

    .line 598
    :cond_0
    const-string v0, "Test"

    const-string v1, "mCustomView == null"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 602
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;

    .line 603
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # setter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1402(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 604
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
