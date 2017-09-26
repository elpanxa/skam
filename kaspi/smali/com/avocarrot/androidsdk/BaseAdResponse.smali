.class public Lcom/avocarrot/androidsdk/BaseAdResponse;
.super Ljava/lang/Object;
.source "BaseAdResponse.java"


# instance fields
.field configuration:Lorg/json/JSONObject;

.field dynamicLayout:Lorg/json/JSONObject;

.field isFilled:Z

.field jsonSlots:Lorg/json/JSONArray;

.field placement:Lorg/json/JSONObject;

.field requestId:Ljava/lang/String;

.field serverMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->jsonSlots:Lorg/json/JSONArray;

    .line 12
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    .line 13
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->requestId:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->isFilled:Z

    .line 15
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->serverMessage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->dynamicLayout:Lorg/json/JSONObject;

    .line 17
    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->configuration:Lorg/json/JSONObject;

    .line 22
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->serverMessage:Ljava/lang/String;

    .line 24
    const-string v0, "isFilled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->isFilled:Z

    .line 25
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->requestId:Ljava/lang/String;

    .line 26
    iget-boolean v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->isFilled:Z

    if-eqz v0, :cond_1

    .line 27
    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    .line 28
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    const-string v1, "dynamicLayout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    const-string v1, "dynamicLayout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->dynamicLayout:Lorg/json/JSONObject;

    .line 31
    :cond_0
    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->configuration:Lorg/json/JSONObject;

    .line 32
    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->jsonSlots:Lorg/json/JSONArray;

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->configuration:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->update(Lorg/json/JSONObject;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->configuration:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDynamicLayout()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->dynamicLayout:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJSONSlots()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->jsonSlots:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->serverMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacement()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->placement:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public isFilled()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->isFilled:Z

    return v0
.end method

.method public setCachedDynamicLayout(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avocarrot/androidsdk/BaseAdResponse;->dynamicLayout:Lorg/json/JSONObject;

    .line 65
    return-void
.end method
