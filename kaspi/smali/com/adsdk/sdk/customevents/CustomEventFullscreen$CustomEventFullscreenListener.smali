.class public interface abstract Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;
.super Ljava/lang/Object;
.source "CustomEventFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomEventFullscreenListener"
.end annotation


# virtual methods
.method public abstract onFullscreenClosed()V
.end method

.method public abstract onFullscreenFailed()V
.end method

.method public abstract onFullscreenLeftApplication()V
.end method

.method public abstract onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V
.end method

.method public abstract onFullscreenOpened()V
.end method
