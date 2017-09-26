.class public interface abstract Lcom/startapp/android/publish/AdDisplayListener;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;
    }
.end annotation


# virtual methods
.method public abstract adClicked(Lcom/startapp/android/publish/Ad;)V
.end method

.method public abstract adDisplayed(Lcom/startapp/android/publish/Ad;)V
.end method

.method public abstract adHidden(Lcom/startapp/android/publish/Ad;)V
.end method

.method public abstract adNotDisplayed(Lcom/startapp/android/publish/Ad;)V
.end method
