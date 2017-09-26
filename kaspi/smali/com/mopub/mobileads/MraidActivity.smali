.class public Lcom/mopub/mobileads/MraidActivity;
.super Lcom/mopub/mobileads/BaseInterstitialActivity;
.source "MraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMraidController:Lcom/mopub/mraid/MraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    return-object v0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method public static preRenderHtml(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    new-instance v0, Lcom/mopub/mobileads/BaseWebView;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/BaseWebView;->enablePlugins(Z)V

    .line 49
    new-instance v1, Lcom/mopub/mobileads/MraidActivity$1;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MraidActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;J)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/MraidActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 77
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "MraidInterstitial"

    const-string v1, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    const-string v0, "MraidActivity received a null HTML body. Finishing the activity."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 100
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    :goto_0
    return-object v0

    .line 103
    :cond_0
    new-instance v1, Lcom/mopub/mraid/MraidController;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidActivity;->mAdReport:Lcom/mopub/common/AdReport;

    sget-object v3, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v1, p0, v2, v3}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    .line 106
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 107
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$2;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 142
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$3;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$3;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController;->setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V

    .line 152
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidController;->loadContent(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v3, 0x1000000

    .line 158
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->destroy()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onPause()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->resume()V

    .line 182
    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 200
    :cond_0
    return-void
.end method
