.class Lcom/avocarrot/androidsdk/RedirectWebView$1;
.super Landroid/webkit/WebViewClient;
.source "RedirectWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/RedirectWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/RedirectWebView;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/RedirectWebView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/avocarrot/androidsdk/RedirectWebView$1;->this$0:Lcom/avocarrot/androidsdk/RedirectWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView$1;->this$0:Lcom/avocarrot/androidsdk/RedirectWebView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/RedirectWebView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView$1;->this$0:Lcom/avocarrot/androidsdk/RedirectWebView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView$1;->this$0:Lcom/avocarrot/androidsdk/RedirectWebView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->onNeedToClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "RedirectFragment | Could not start redirect Activity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 53
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView$1;->this$0:Lcom/avocarrot/androidsdk/RedirectWebView;

    invoke-virtual {v0, p2}, Lcom/avocarrot/androidsdk/RedirectWebView;->canForwardToGooglePlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
