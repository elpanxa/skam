.class public Lcom/supersonicads/sdk/data/SSASession;
.super Ljava/lang/Object;
.source "SSASession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/data/SSASession$SessionType;
    }
.end annotation


# instance fields
.field public final CONNECTIVITY:Ljava/lang/String;

.field public final SESSION_END_TIME:Ljava/lang/String;

.field public final SESSION_START_TIME:Ljava/lang/String;

.field public final SESSION_TYPE:Ljava/lang/String;

.field private connectivity:Ljava/lang/String;

.field private sessionEndTime:J

.field private sessionStartTime:J

.field private sessionType:Lcom/supersonicads/sdk/data/SSASession$SessionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "sessionStartTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_START_TIME:Ljava/lang/String;

    .line 13
    const-string v0, "sessionEndTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_END_TIME:Ljava/lang/String;

    .line 14
    const-string v0, "sessionType"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_TYPE:Ljava/lang/String;

    .line 15
    const-string v0, "connectivity"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->CONNECTIVITY:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getCurrentTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/data/SSASession;->setSessionStartTime(J)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/data/SSASession;->setSessionType(Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    .line 26
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SDKUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSASession;->setConnectivity(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "sessionStartTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_START_TIME:Ljava/lang/String;

    .line 13
    const-string v0, "sessionEndTime"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_END_TIME:Ljava/lang/String;

    .line 14
    const-string v0, "sessionType"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->SESSION_TYPE:Ljava/lang/String;

    .line 15
    const-string v0, "connectivity"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->CONNECTIVITY:Ljava/lang/String;

    .line 33
    :try_start_0
    const-string v0, "sessionStartTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    const-string v0, "sessionEndTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string v0, "sessionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public endSession()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getCurrentTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/data/SSASession;->setSessionEndTime(J)V

    .line 44
    return-void
.end method

.method public getConnectivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->connectivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionEndTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionEndTime:J

    return-wide v0
.end method

.method public getSessionStartTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionStartTime:J

    return-wide v0
.end method

.method public getSessionType()Lcom/supersonicads/sdk/data/SSASession$SessionType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionType:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    return-object v0
.end method

.method public setConnectivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSASession;->connectivity:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSessionEndTime(J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionEndTime:J

    .line 64
    return-void
.end method

.method public setSessionStartTime(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionStartTime:J

    .line 56
    return-void
.end method

.method public setSessionType(Lcom/supersonicads/sdk/data/SSASession$SessionType;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSASession;->sessionType:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    .line 72
    return-void
.end method
