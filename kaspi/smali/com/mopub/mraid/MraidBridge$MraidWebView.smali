.class public Lcom/mopub/mraid/MraidBridge$MraidWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MraidWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    }
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    .line 253
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 262
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 263
    :goto_0
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    if-eq v0, v1, :cond_0

    .line 264
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    .line 265
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    .line 269
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    .line 257
    return-void
.end method
