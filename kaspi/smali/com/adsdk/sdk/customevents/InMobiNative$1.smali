.class Lcom/adsdk/sdk/customevents/InMobiNative$1;
.super Ljava/lang/Object;
.source "InMobiNative.java"

# interfaces
.implements Lcom/inmobi/monetization/IMNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/customevents/InMobiNative;->createListener()Lcom/inmobi/monetization/IMNativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/InMobiNative;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/InMobiNative;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/InMobiNative$1;)Lcom/adsdk/sdk/customevents/InMobiNative;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;

    return-object v0
.end method


# virtual methods
.method public onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative$1;->this$0:Lcom/adsdk/sdk/customevents/InMobiNative;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    .line 108
    :cond_0
    return-void
.end method

.method public onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/customevents/InMobiNative$1$1;-><init>(Lcom/adsdk/sdk/customevents/InMobiNative$1;Lcom/inmobi/monetization/IMNative;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    return-void
.end method
