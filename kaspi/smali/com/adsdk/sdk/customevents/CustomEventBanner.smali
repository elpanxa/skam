.class public abstract Lcom/adsdk/sdk/customevents/CustomEventBanner;
.super Ljava/lang/Object;
.source "CustomEventBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    }
.end annotation


# instance fields
.field protected listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

.field protected trackingPixel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/CustomEventBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 65
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void
.end method

.method public abstract loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method protected reportImpression()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/adsdk/sdk/customevents/CustomEventBanner$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$1;-><init>(Lcom/adsdk/sdk/customevents/CustomEventBanner;)V

    .line 54
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
