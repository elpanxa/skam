.class Lcom/adsdk/sdk/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->requestAd(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$xml:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 231
    :goto_0
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    const-string v0, "starting request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 239
    :try_start_0
    new-instance v1, Lcom/adsdk/sdk/RequestGeneralAd;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    invoke-direct {v1, v0}, Lcom/adsdk/sdk/RequestGeneralAd;-><init>(Ljava/io/InputStream;)V

    .line 240
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->prioritizeVideoAds:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getInterstitialRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdRequest;)V

    .line 250
    :goto_1
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$12(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    invoke-static {v2, v0}, Lcom/adsdk/sdk/AdManager;->access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    .line 252
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->alreadyRequestedVideo:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$7(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getVideoRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/AdManager;->access$8(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdRequest;)V

    .line 255
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$9(Lcom/adsdk/sdk/AdManager;Z)V

    .line 256
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$12(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    invoke-static {v2, v0}, Lcom/adsdk/sdk/AdManager;->access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    .line 264
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    const-string v0, "response OK received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v1

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyAdLoaded(Lcom/adsdk/sdk/AdResponse;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$15(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :cond_1
    :goto_3
    const-string v0, "finishing ad request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-static {v0, v4}, Lcom/adsdk/sdk/AdManager;->access$11(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    .line 284
    :goto_4
    return-void

    .line 233
    :cond_2
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 242
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isVideoAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getVideoRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/AdManager;->access$8(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdRequest;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 277
    :catch_1
    move-exception v0

    .line 278
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v1, Lcom/adsdk/sdk/AdResponse;

    invoke-direct {v1}, Lcom/adsdk/sdk/AdResponse;-><init>()V

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    .line 279
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    .line 280
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$10(Lcom/adsdk/sdk/AdManager;)V

    goto :goto_3

    .line 245
    :cond_4
    :try_start_3
    const-string v0, "Both video and interstitial ads disabled"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$10(Lcom/adsdk/sdk/AdManager;)V

    .line 247
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$11(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    goto :goto_4

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->isInterstitialAdsEnabled:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->alreadyRequestedInterstitial:Z
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getInterstitialRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdRequest;)V

    .line 259
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;Z)V

    .line 260
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->request:Lcom/adsdk/sdk/AdRequest;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$12(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    invoke-static {v2, v0}, Lcom/adsdk/sdk/AdManager;->access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    goto/16 :goto_2

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    const-string v0, "response NO AD received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$10(Lcom/adsdk/sdk/AdManager;)V

    goto/16 :goto_3

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->loadCustomEventFullscreen()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$16(Lcom/adsdk/sdk/AdManager;)V

    .line 272
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->customEventFullscreen:Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$17(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/customevents/CustomEventFullscreen;

    move-result-object v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$10(Lcom/adsdk/sdk/AdManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method
