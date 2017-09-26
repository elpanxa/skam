.class Lcom/adsdk/sdk/mraid/MraidBrowser$4;
.super Ljava/lang/Object;
.source "MraidBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidBrowser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$4;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$4;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$2(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$4;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$2(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 184
    :cond_0
    return-void
.end method
