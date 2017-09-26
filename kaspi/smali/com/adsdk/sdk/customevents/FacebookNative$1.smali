.class Lcom/adsdk/sdk/customevents/FacebookNative$1;
.super Ljava/lang/Object;
.source "FacebookNative.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/FacebookNative;->createListener()Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/FacebookNative;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/FacebookNative;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/FacebookNative$1;)Lcom/adsdk/sdk/customevents/FacebookNative;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;

    return-object v0
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/customevents/FacebookNative$1$1;-><init>(Lcom/adsdk/sdk/customevents/FacebookNative$1;Lcom/facebook/ads/Ad;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/FacebookNative$1;->this$0:Lcom/adsdk/sdk/customevents/FacebookNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/FacebookNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    .line 47
    :cond_0
    return-void
.end method
