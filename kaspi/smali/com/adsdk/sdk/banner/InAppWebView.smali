.class public Lcom/adsdk/sdk/banner/InAppWebView;
.super Landroid/app/Activity;
.source "InAppWebView.java"


# static fields
.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 37
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/InAppWebView;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 45
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 46
    new-instance v1, Lcom/adsdk/sdk/banner/InAppWebView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/InAppWebView$1;-><init>(Lcom/adsdk/sdk/banner/InAppWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    new-instance v1, Lcom/adsdk/sdk/banner/InAppWebView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/InAppWebView$2;-><init>(Lcom/adsdk/sdk/banner/InAppWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    const-string v1, "REDIRECT_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 29
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/InAppWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/InAppWebView;->initializeWebView(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
