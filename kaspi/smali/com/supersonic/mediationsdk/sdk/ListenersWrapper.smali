.class public Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;
    }
.end annotation


# instance fields
.field private mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

.field private mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    .line 27
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->start()V

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    return-object v0
.end method

.method private canSendCallback(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 409
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 411
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$21;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$21;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClicked()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 298
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$15;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$15;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onInterstitialAvailability(Z)V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialAvailability(available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialInitFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$11;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$11;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialInitSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$10;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$10;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 281
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 283
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$14;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$14;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialShowSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$13;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$13;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    .line 399
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOfferwallAdCredited(credits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCredits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCreditsFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 403
    return v0
.end method

.method public onOfferwallClosed()V
    .locals 4

    .prologue
    .line 423
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 425
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$22;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$22;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallInitFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$18;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$18;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallInitSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 336
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$17;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$17;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 4

    .prologue
    .line 364
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 366
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$19;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$19;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 379
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 381
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 389
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onRewardedVideoAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 117
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdClosedEvent(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onRewardedVideoAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 101
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdOpenedEvent(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$3;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$3;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 5

    .prologue
    .line 180
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdRewarded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 181
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyMediationVideoAdRewardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/model/Placement;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoInitFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 84
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 87
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$2;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onRewardedVideoInitSuccess()"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 69
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1, v3}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 71
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 197
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyShowRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$9;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$9;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onVideoAvailabilityChanged(Z)V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoAvailabilityChanged(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAvailabilityChangedEvent(Ljava/lang/String;Z)V

    .line 135
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onVideoEnd()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onVideoEnd()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 165
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoEndEvent(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$7;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$7;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onVideoStart()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 149
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoStartEvent(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$6;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$6;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 57
    return-void
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 61
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 53
    return-void
.end method
