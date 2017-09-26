.class public Lcom/supersonic/mediationsdk/logger/ServerLogger;
.super Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "server"


# instance fields
.field private final SERVER_LOGS_SIZE_LIMIT:I

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "server"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->SERVER_LOGS_SIZE_LIMIT:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    const-string v0, "server"

    invoke-direct {p0, v0, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;-><init>(Ljava/lang/String;I)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->SERVER_LOGS_SIZE_LIMIT:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/logger/ServerLogger;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->send()V

    return-void
.end method

.method private declared-synchronized addLogEntry(Lcom/supersonic/mediationsdk/logger/ServerLogEntry;)V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->shouldSendLogs()Z

    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 48
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const/16 v0, 0x1f4

    :goto_1
    iget-object v2, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_2
    iput-object v1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private send()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/supersonic/mediationsdk/logger/LogsSender;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/logger/LogsSender;-><init>(Ljava/util/ArrayList;)V

    const-string v1, "LogsSender"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method private shouldSendLogs()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;-><init>(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->addLogEntry(Lcom/supersonic/mediationsdk/logger/ServerLogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    if-eqz p3, :cond_0

    .line 115
    const-string v1, ":stacktrace["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    new-instance v1, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;-><init>(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->addLogEntry(Lcom/supersonic/mediationsdk/logger/ServerLogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
