.class public Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
.super Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.source "SupersonicLoggerManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/logger/LogListener;


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/SupersonicLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->initSubLoggers()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    .line 30
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->initSubLoggers()V

    .line 31
    return-void
.end method

.method private findLoggerByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
    .locals 4

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 130
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-class v2, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogger(I)Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    .locals 3

    .prologue
    .line 64
    const-class v1, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-class v2, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 70
    :goto_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mInstance:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    iput p0, v0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mDebugLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSubLoggers()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/supersonic/mediationsdk/logger/ConsoleLogger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/supersonic/mediationsdk/logger/ConsoleLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/supersonic/mediationsdk/logger/ServerLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/supersonic/mediationsdk/logger/ServerLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public addLogger(Lcom/supersonic/mediationsdk/logger/SupersonicLogger;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mDebugLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v0, :cond_1

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 91
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->getDebugLevel()I

    move-result v2

    if-gt v2, p3, :cond_2

    .line 92
    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    if-nez p3, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 110
    const/4 v2, 0x3

    invoke-virtual {v0, p1, p2, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 114
    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLog(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoggerDebugLevel(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->findLoggerByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 154
    if-ltz p2, :cond_1

    const/4 v1, 0x3

    if-gt p2, v1, :cond_1

    .line 156
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoggerDebugLevel(loggerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,debugLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->setDebugLevel(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->mLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find logger:setLoggerDebugLevel(loggerName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,debugLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
