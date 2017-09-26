.class public interface abstract Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;
.super Ljava/lang/Object;
.source "BaseVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseVideoViewListener"
.end annotation


# virtual methods
.method public abstract showCloseButton()V
.end method

.method public abstract videoClicked()V
.end method

.method public abstract videoCompleted(Z)V
.end method

.method public abstract videoError(Z)V
.end method
