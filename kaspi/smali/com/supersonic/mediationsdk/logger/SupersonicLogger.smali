.class public abstract Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.super Ljava/lang/Object;
.source "SupersonicLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;,
        Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicLogLevel;
    }
.end annotation


# instance fields
.field protected mDebugLevel:I

.field protected mLoggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mDebugLevel:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mDebugLevel:I

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    if-eqz v1, :cond_0

    .line 52
    check-cast p1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;

    .line 55
    iget-object v1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    iget-object v1, p1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    :cond_0
    return v0
.end method

.method public getDebugLevel()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mDebugLevel:I

    return v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mLoggerName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
.end method

.method public abstract logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public setDebugLevel(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger;->mDebugLevel:I

    .line 46
    return-void
.end method
