.class Lcom/supersonic/mediationsdk/RewardedVideoManager;
.super Ljava/lang/Object;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final KTO_ALGORITHM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mDidReportInit:Z

.field private mExhaustedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mInitiatedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdAvailable:Z

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mNotAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 36
    const-string v0, "KTO"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->KTO_ALGORITHM:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addToAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V
    .locals 6

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdapterAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 594
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 596
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 597
    const-string v2, "KTO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_3

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 599
    move-object v0, p1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v5

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v2

    if-gt v5, v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 607
    :goto_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :cond_2
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method private declared-synchronized addToExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_0
    monitor-exit p0

    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_0
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_0
    monitor-exit p0

    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 6

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":completeIteration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 519
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moved to \'Exhausted\' list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 523
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 525
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->resetNumberOfVideosPlayed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    .line 528
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeIteration(provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeIterationRound()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 539
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "Reset Iteration"

    invoke-virtual {v0, v1, v2, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 542
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 544
    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "moved to \'Available\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "moved to \'Not Available\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "End of Reset Iteration"

    invoke-virtual {v0, v1, v2, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 555
    :cond_2
    return-void
.end method

.method private isIterationRoundComplete()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersSmartLoadAmount()I

    move-result v1

    .line 438
    const/4 v0, 0x0

    .line 439
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->hasMoreProvidersToLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_1

    .line 445
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 446
    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/SupersonicObject;->addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    move-object v0, v1

    .line 447
    goto :goto_0

    .line 450
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized notifyIsAdAvailableForStatistics()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 707
    monitor-enter p0

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 712
    :goto_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    const-string v2, "Mediation"

    invoke-virtual {v1, v2, v0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V

    .line 715
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 716
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 717
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 721
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 722
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 723
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V

    goto :goto_2

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 727
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 728
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 731
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private prepareStateForInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 74
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private declared-synchronized removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_0
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_0
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_0
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 114
    :goto_0
    if-ge v0, p1, :cond_0

    .line 115
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "requestUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {p0, v3, v1, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .locals 6

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sdkVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1, p2, p3}, Lcom/supersonic/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportImpression:(providerURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "hit:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 199
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldCallInitFail()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 580
    const/4 v1, 0x0

    .line 582
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRewardedVideoAdapters()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    if-nez v2, :cond_0

    .line 584
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 588
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private shouldNotifyAvailabilityChanged(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 558
    .line 560
    iget-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 561
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 575
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 566
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    goto :goto_0

    .line 570
    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRewardedVideoAdapters()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 571
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 214
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getNextProvider()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 215
    if-nez v4, :cond_0

    move-object v1, v3

    .line 283
    :goto_0
    monitor-exit p0

    return-object v1

    .line 219
    :cond_0
    :try_start_1
    const-string v1, "provider"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    const-string v1, "requestUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":startAdapter("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v3

    .line 225
    goto :goto_0

    .line 230
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.supersonic.adapters."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Adapter"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 231
    const-string v6, "getInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 232
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 234
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v2

    if-ge v2, v10, :cond_2

    move-object v1, v3

    .line 235
    goto/16 :goto_0

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 239
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersSmartLoadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoTimeout(I)V

    .line 240
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersLoadPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoPriority(I)V

    .line 241
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setPlacementsHolder(Lcom/supersonic/mediationsdk/model/PlacementsHolder;)V

    .line 254
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v2, v0

    invoke-interface {v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 255
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": startAdapter("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") moved to \'Initiated\' list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 256
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 257
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v6

    .line 259
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v2, v0

    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-interface {v2, v7, v6, v8}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    :try_start_3
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":startAdapter(JSONObject:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxRewardedVideoAdapters()I

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    .line 275
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldCallInitFail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v3

    .line 280
    goto/16 :goto_0

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V
    .locals 1

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    .line 645
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 646
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 652
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToNotAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 661
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 129
    iput-object p3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;-><init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 183
    const-string v1, "RewardedVideoInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Multiple calls to init are not allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 369
    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 375
    :goto_1
    monitor-exit p0

    return v0

    .line 372
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {p0, v3, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    .line 375
    goto :goto_1
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 296
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdClosed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 469
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdClosedEvent(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 473
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->notifyIsAdAvailableForStatistics()V

    .line 474
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 459
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdOpenedEvent(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdOpened()V

    .line 462
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 6

    .prologue
    .line 690
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdRewarded("

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

    .line 692
    if-nez p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object p1

    .line 696
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyProviderVideoAdRewardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 699
    return-void
.end method

.method public declared-synchronized onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 399
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onRewardedVideoInitFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 404
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 406
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Not Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 408
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 411
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldCallInitFail()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 422
    :goto_0
    if-eqz v1, :cond_0

    .line 423
    :try_start_1
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :cond_0
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v1, v3

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    :try_start_3
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoInitFail(error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoInitSuccess()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 387
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 389
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 391
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoShowFail("

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

    .line 432
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 433
    return-void
.end method

.method public declared-synchronized onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 480
    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":onVideoAvailabilityChanged(available:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 485
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAvailabilityChangedEvent(Ljava/lang/String;Z)V

    .line 487
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 489
    if-eqz p1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Loading - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved to \'Available\' list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 491
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    .line 502
    :goto_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 510
    :goto_1
    if-eqz v1, :cond_0

    .line 511
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :cond_0
    monitor-exit p0

    return-void

    .line 495
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Loading - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved to \'Not Available\' list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 496
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 498
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 499
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    :try_start_3
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onVideoEnd(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onVideoEnd()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 683
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoEndEvent(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoEnd()V

    .line 686
    return-void
.end method

.method public onVideoStart(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onVideoStart()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 675
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoStartEvent(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoStart()V

    .line 678
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 381
    return-void
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    const-string v1, "No Internet Connection"

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 330
    invoke-interface {v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isUltraEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v3

    .line 337
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Placement;->getId()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 340
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v2

    .line 341
    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Placement;->getId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 344
    :cond_2
    invoke-interface {v1, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->showRewardedVideo(Ljava/lang/String;)V

    .line 346
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->increaseNumberOfVideosPlayed()V

    .line 347
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " videos played"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 350
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v3

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 351
    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 358
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v2, v0

    invoke-virtual {p0, v4, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 359
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "FailedToShowVideoException"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " Failed to show video"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
