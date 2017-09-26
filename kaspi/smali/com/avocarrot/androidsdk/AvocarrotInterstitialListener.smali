.class public Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;
.super Lcom/avocarrot/androidsdk/BaseListener;
.source "AvocarrotInterstitialListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/avocarrot/androidsdk/BaseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdClicked()V

    .line 18
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdDismissed()V

    .line 28
    return-void
.end method

.method public onAdDisplayed()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdDisplayed()V

    .line 23
    return-void
.end method

.method public onAdError(Lcom/avocarrot/androidsdk/AdError;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseListener;->onAdError(Lcom/avocarrot/androidsdk/AdError;)V

    .line 13
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdLoaded()V

    .line 8
    return-void
.end method
