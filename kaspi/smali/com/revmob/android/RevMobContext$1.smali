.class final Lcom/revmob/android/RevMobContext$1;
.super Ljava/lang/Object;
.source "RevMobContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/android/RevMobContext;->loadAdvertisingInfo(Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 431
    :try_start_0
    # getter for: Lcom/revmob/android/RevMobContext;->activity:Landroid/content/Context;
    invoke-static {}, Lcom/revmob/android/RevMobContext;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/android/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/revmob/android/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/revmob/android/RevMobContext;->advertisingId:Ljava/lang/String;
    invoke-static {v1}, Lcom/revmob/android/RevMobContext;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    invoke-virtual {v0}, Lcom/revmob/android/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    # setter for: Lcom/revmob/android/RevMobContext;->adTrackingEnabled:Ljava/lang/String;
    invoke-static {v0}, Lcom/revmob/android/RevMobContext;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    # getter for: Lcom/revmob/android/RevMobContext;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/revmob/android/RevMobContext;->access$300()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/revmob/android/RevMobContext;->activity:Landroid/content/Context;
    invoke-static {}, Lcom/revmob/android/RevMobContext;->access$000()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/revmob/android/RevMobContext;->listener:Lcom/revmob/client/RevMobClientListener;
    invoke-static {}, Lcom/revmob/android/RevMobContext;->access$400()Lcom/revmob/client/RevMobClientListener;

    move-result-object v3

    # getter for: Lcom/revmob/android/RevMobContext;->publisherListener:Lcom/revmob/RevMobAdsListener;
    invoke-static {}, Lcom/revmob/android/RevMobContext;->access$500()Lcom/revmob/RevMobAdsListener;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/revmob/client/RevMobClient;->startSession(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;Lcom/revmob/RevMobAdsListener;)Z

    .line 439
    :goto_1
    return-void

    .line 433
    :cond_0
    const-string v0, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error with Google Play Services: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
