.class Lcom/mopub/mobileads/VastWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "VastWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;,
        Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    }
.end annotation


# instance fields
.field mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/mopub/mobileads/VastWebView;->disableScrollingAndZoom()V

    .line 32
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastWebView;->enablePlugins(Z)V

    .line 38
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setBackgroundColor(I)V

    .line 39
    new-instance v0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;-><init>(Lcom/mopub/mobileads/VastWebView;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setId(I)V

    .line 41
    return-void
.end method

.method static createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/VastResource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/mopub/mobileads/VastWebView;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastWebView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastResource;->initializeWebView(Lcom/mopub/mobileads/VastWebView;)V

    .line 77
    return-object v0
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollBarEnabled(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollbarOverlay(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastWebView;->setScrollBarStyle(I)V

    .line 59
    return-void
.end method


# virtual methods
.method getVastWebViewClickListener()Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    return-object v0
.end method

.method loadData(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 44
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/VastWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    .line 50
    return-void
.end method
