.class public Lcom/adsdk/sdk/video/WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowNavigation:Z

.field private mAllowedUrl:Ljava/lang/String;

.field private mFinishedLoadingTime:J

.field private mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    .line 21
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    .line 22
    iput-boolean p2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 24
    return-void
.end method


# virtual methods
.method public getAllowedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedLoadingTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    return-wide v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowedUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;->onPageLoaded()V

    .line 115
    :cond_2
    return-void
.end method

.method public setAllowedUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 92
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    .line 100
    :cond_1
    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    .line 127
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 29
    const-string v0, "market:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "http://market.android.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "geo:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "google.streetview:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return v3

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could open URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "mfox:external:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "mfox:replayvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-string v1, "replayVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    const-string v0, "Your activity class has no replayVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 60
    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    .line 59
    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "mfox:playvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "playVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 69
    :catch_3
    move-exception v0

    .line 70
    const-string v0, "Your activity class has no playVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :catch_4
    move-exception v0

    .line 72
    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_4
    const-string v0, "mfox:skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 80
    :cond_5
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
