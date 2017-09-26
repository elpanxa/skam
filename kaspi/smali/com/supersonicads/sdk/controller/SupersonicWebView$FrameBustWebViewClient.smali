.class Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 653
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 658
    const/4 v0, 0x1

    return v0
.end method
