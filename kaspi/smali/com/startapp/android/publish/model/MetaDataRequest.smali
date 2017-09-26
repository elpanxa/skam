.class public Lcom/startapp/android/publish/model/MetaDataRequest;
.super Lcom/startapp/android/publish/model/BaseRequest;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
    }
.end annotation


# instance fields
.field private daysSinceFirstSession:I

.field private paidAmount:F

.field private payingUser:Z

.field private reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

.field private totalSessions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseRequest;-><init>()V

    .line 49
    const-string v0, "totalSessions"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->totalSessions:I

    .line 50
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/model/MetaDataRequest;->calcDaysSinceFirstSession(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->daysSinceFirstSession:I

    .line 51
    const-string v0, "inAppPurchaseAmount"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->paidAmount:F

    .line 52
    const-string v0, "payingUser"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->payingUser:Z

    .line 53
    iput-object p2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 54
    return-void
.end method

.method private calcDaysSinceFirstSession(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "firstSessionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/startapp/android/publish/h/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/model/MetaDataRequest;->millisToDays(J)I

    move-result v0

    return v0
.end method

.method private millisToDays(J)I
    .locals 3

    .prologue
    .line 61
    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getDaysSinceFirstSession()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->daysSinceFirstSession:I

    return v0
.end method

.method public getNameValueMap()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-super {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :cond_0
    const-string v1, "totalSessions"

    iget v2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->totalSessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 120
    const-string v1, "daysSinceFirstSession"

    iget v2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->daysSinceFirstSession:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 121
    const-string v1, "payingUser"

    iget-boolean v2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->payingUser:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 122
    const-string v1, "paidAmount"

    iget v2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->paidAmount:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 123
    const-string v1, "reason"

    iget-object v2, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 125
    return-object v0
.end method

.method public getPaidAmount()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->paidAmount:F

    return v0
.end method

.method public getReason()Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    return-object v0
.end method

.method public getTotalSessions()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->totalSessions:I

    return v0
.end method

.method public isPayingUser()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->payingUser:Z

    return v0
.end method

.method public setDaysSinceFirstSession(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->daysSinceFirstSession:I

    .line 78
    return-void
.end method

.method public setPaidAmount(F)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->paidAmount:F

    .line 94
    return-void
.end method

.method public setPayingUser(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->payingUser:Z

    .line 86
    return-void
.end method

.method public setReason(Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    .line 102
    return-void
.end method

.method public setTotalSessions(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->totalSessions:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetaDataRequest [totalSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->totalSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysSinceFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->daysSinceFirstSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->payingUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paidAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->paidAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/MetaDataRequest;->reason:Lcom/startapp/android/publish/model/MetaDataRequest$RequestReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
