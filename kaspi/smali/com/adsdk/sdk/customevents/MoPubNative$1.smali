.class Lcom/adsdk/sdk/customevents/MoPubNative$1;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/MoPubNative;->createMoPubNativeListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/MoPubNative;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/MoPubNative;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/MoPubNative$1;)Lcom/adsdk/sdk/customevents/MoPubNative;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;

    return-object v0
.end method


# virtual methods
.method public onNativeClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/MoPubNative$1;->this$0:Lcom/adsdk/sdk/customevents/MoPubNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/MoPubNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    .line 90
    :cond_0
    return-void
.end method

.method public onNativeImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/customevents/MoPubNative$1$1;-><init>(Lcom/adsdk/sdk/customevents/MoPubNative$1;Lcom/mopub/nativeads/NativeResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method
