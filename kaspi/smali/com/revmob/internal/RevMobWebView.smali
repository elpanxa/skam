.class public Lcom/revmob/internal/RevMobWebView;
.super Landroid/webkit/WebView;
.source "RevMobWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/revmob/internal/RevMobWebViewClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/revmob/internal/RevMobWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/RevMobWebViewClient;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/revmob/internal/RevMobWebView;->setScrollContainer(Z)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/revmob/internal/RevMobWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/revmob/internal/RevMobWebView;->setVerticalScrollBarEnabled(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/revmob/internal/RevMobWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 23
    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {p0, p4}, Lcom/revmob/internal/RevMobWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 26
    :cond_0
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    const-string v0, "text/html; charset=UTF-8"

    const-string v1, "utf-8"

    invoke-virtual {p0, p3, v0, v1}, Lcom/revmob/internal/RevMobWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p0, p2}, Lcom/revmob/internal/RevMobWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private solveAndroidBug(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 43
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 45
    packed-switch v3, :pswitch_data_0

    .line 56
    :pswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_1
    const-string v3, "%25"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :pswitch_2
    const-string v3, "%27"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :pswitch_3
    const-string v3, "%23"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/revmob/internal/RevMobWebView;->solveAndroidBug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
