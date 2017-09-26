.class abstract Lcom/avocarrot/androidsdk/RedirectWebView;
.super Landroid/widget/RelativeLayout;
.source "RedirectWebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field mProgressBar:Landroid/widget/ProgressBar;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/avocarrot/androidsdk/RedirectWebView;->canForwardToGooglePlay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    .line 43
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 46
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 48
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/avocarrot/androidsdk/RedirectWebView$1;

    invoke-direct {v1, p0}, Lcom/avocarrot/androidsdk/RedirectWebView$1;-><init>(Lcom/avocarrot/androidsdk/RedirectWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v5, p1}, Lcom/avocarrot/androidsdk/Utils;->convertToPixels(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v5, p1}, Lcom/avocarrot/androidsdk/Utils;->convertToPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/avocarrot/androidsdk/RedirectWebView;->setBackgroundColor(I)V

    .line 83
    iget-object v1, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->addView(Landroid/view/View;)V

    .line 85
    const-string v0, "RedirectLayout"

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 89
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 90
    iget-object v0, p0, Lcom/avocarrot/androidsdk/RedirectWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/RedirectWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method canForwardToGooglePlay(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    invoke-static {p1}, Lcom/avocarrot/androidsdk/Utils;->isDeepLink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avocarrot/androidsdk/Utils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectWebView;->onNeedToClose()V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/RedirectWebView;->onNeedToClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v0, 0x1

    .line 109
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method abstract onNeedToClose()V
.end method
