.class Lcom/supersonic/mediationsdk/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placement"

.field public static final KEY_PROVIDER:Ljava/lang/String; = "provider"

.field public static final KEY_REWARD_AMOUNT:Ljava/lang/String; = "rewardAmount"

.field public static final KEY_REWARD_NAME:Ljava/lang/String; = "rewardName"

.field public static final KEY_SESSION_DEPTH:Ljava/lang/String; = "sessionDepth"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TRANSTACTION_ID:Ljava/lang/String; = "transId"


# instance fields
.field private mEventId:I

.field private mPlacementName:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mRewardAmount:I

.field private mRewardName:Ljava/lang/String;

.field private mSessionDepth:I

.field private mStatus:I

.field private mTimestamp:J

.field private mTransId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JI)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mEventId:I

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mTimestamp:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mSessionDepth:I

    .line 33
    iput v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mStatus:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mPlacementName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardName:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardAmount:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mTransId:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/supersonic/mediationsdk/events/Event;->mEventId:I

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    .line 43
    iput-wide p3, p0, Lcom/supersonic/mediationsdk/events/Event;->mTimestamp:J

    .line 44
    iput p5, p0, Lcom/supersonic/mediationsdk/events/Event;->mSessionDepth:I

    .line 45
    return-void
.end method


# virtual methods
.method public getEventId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mEventId:I

    return v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, ""

    .line 88
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    .line 91
    :cond_0
    return-object v0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardAmount:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionDepth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mSessionDepth:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mStatus:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mTimestamp:J

    return-wide v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mTransId:Ljava/lang/String;

    return-object v0
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/Event;->mPlacementName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRewardAmount(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardAmount:I

    .line 62
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setStatus(Z)V
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mStatus:I

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/Event;->mTransId:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    :try_start_0
    const-string v1, "eventId"

    iget v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mEventId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v1, "provider"

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "sessionDepth"

    iget v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mSessionDepth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    iget v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mStatus:I

    if-eq v1, v4, :cond_0

    .line 129
    const-string v2, "status"

    iget v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mStatus:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mPlacementName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const-string v1, "placement"

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    const-string v1, "rewardName"

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_2
    iget v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardAmount:I

    if-eq v1, v4, :cond_3

    .line 138
    const-string v1, "rewardAmount"

    iget v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mRewardAmount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/Event;->mTransId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    const-string v1, "transId"

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/Event;->mTransId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_4
    :goto_1
    return-object v0

    .line 129
    :cond_5
    const-string v1, "false"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    const/4 v0, 0x0

    goto :goto_1
.end method
