.class public Lcom/mopub/mobileads/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field private static sDeadlockCleared:Z


# instance fields
.field protected mIsDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/BaseWebView;->sDeadlockCleared:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebView;->enablePlugins(Z)V

    .line 30
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V

    .line 32
    sget-boolean v0, Lcom/mopub/mobileads/BaseWebView;->sDeadlockCleared:Z

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebView;->clearWebViewDeadlock(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/mobileads/BaseWebView;->sDeadlockCleared:Z

    .line 36
    :cond_0
    return-void
.end method

.method private clearWebViewDeadlock(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 84
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 89
    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 91
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    const/16 v1, 0x7d5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    const v1, 0x1000018

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 99
    const v1, 0x800033

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 103
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->mIsDestroyed:Z

    .line 57
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->removeAllViews()V

    .line 62
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 63
    return-void
.end method

.method protected enablePlugins(Z)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->JELLY_BEAN_MR2:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0
.end method

.method setIsDestroyed(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebView;->mIsDestroyed:Z

    .line 68
    return-void
.end method
