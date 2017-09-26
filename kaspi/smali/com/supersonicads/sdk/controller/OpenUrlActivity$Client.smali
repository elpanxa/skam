.class Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$200(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->interceptedUrlToStore()V

    .line 200
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->finish()V

    .line 201
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
