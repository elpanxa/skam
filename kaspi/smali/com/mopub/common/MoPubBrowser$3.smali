.class Lcom/mopub/common/MoPubBrowser$3;
.super Ljava/lang/Object;
.source "MoPubBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/MoPubBrowser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mopub/common/MoPubBrowser$3;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/common/MoPubBrowser$3;->this$0:Lcom/mopub/common/MoPubBrowser;

    # getter for: Lcom/mopub/common/MoPubBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mopub/common/MoPubBrowser$3;->this$0:Lcom/mopub/common/MoPubBrowser;

    # getter for: Lcom/mopub/common/MoPubBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 141
    :cond_0
    return-void
.end method
