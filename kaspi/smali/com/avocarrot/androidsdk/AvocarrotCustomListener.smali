.class public Lcom/avocarrot/androidsdk/AvocarrotCustomListener;
.super Lcom/avocarrot/androidsdk/BaseListener;
.source "AvocarrotCustomListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/avocarrot/androidsdk/BaseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdClicked()V

    .line 24
    return-void
.end method

.method public onAdError(Lcom/avocarrot/androidsdk/AdError;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseListener;->onAdError(Lcom/avocarrot/androidsdk/AdError;)V

    .line 19
    return-void
.end method

.method public onAdImpression()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdImpression()V

    .line 29
    return-void
.end method

.method onAdLoaded()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdLoaded()V

    .line 14
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/CustomModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdLoaded()V

    .line 9
    return-void
.end method
