.class public Lorg/altbeacon/beacon/service/MonitorState;
.super Ljava/lang/Object;
.source "MonitorState.java"


# static fields
.field public static INSIDE_EXPIRATION_MILLIS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MonitorState"


# instance fields
.field private callback:Lorg/altbeacon/beacon/service/Callback;

.field private inside:Z

.field private lastSeenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x2710

    sput-wide v0, Lorg/altbeacon/beacon/service/MonitorState;->INSIDE_EXPIRATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    .line 38
    iput-object p1, p0, Lorg/altbeacon/beacon/service/MonitorState;->callback:Lorg/altbeacon/beacon/service/Callback;

    .line 39
    return-void
.end method


# virtual methods
.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method

.method public isInside()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitorState;->isNewlyOutside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewlyOutside()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    if-eqz v2, :cond_0

    .line 56
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    sub-long/2addr v2, v4

    sget-wide v4, Lorg/altbeacon/beacon/service/MonitorState;->INSIDE_EXPIRATION_MILLIS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 57
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    .line 58
    const-string v2, "MonitorState"

    const-string v3, "We are newly outside the region because the lastSeenTime of %s was %s seconds ago, and that is over the expiration duration of %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    sget-wide v6, Lorg/altbeacon/beacon/service/MonitorState;->INSIDE_EXPIRATION_MILLIS:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-wide v10, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public markInside()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    .line 48
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    if-nez v1, :cond_0

    .line 49
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
