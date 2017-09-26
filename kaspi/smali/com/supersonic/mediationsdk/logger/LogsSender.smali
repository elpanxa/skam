.class Lcom/supersonic/mediationsdk/logger/LogsSender;
.super Ljava/lang/Object;
.source "LogsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AUTHO_PASSWORD:Ljava/lang/String;

.field private final AUTHO_USERNAME:Ljava/lang/String;

.field private final LOG_URL:Ljava/lang/String;

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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/logger/ServerLogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "https://mobilelogs.supersonic.com"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->LOG_URL:Ljava/lang/String;

    .line 19
    const-string v0, "mobilelogs"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_USERNAME:Ljava/lang/String;

    .line 20
    const-string v0, "k@r@puz"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->AUTHO_PASSWORD:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private getJSONToSend()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v0, "general_properties"

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;

    .line 44
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/ServerLogEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    :goto_1
    return-object v1

    .line 46
    :cond_0
    :try_start_1
    const-string v0, "log_data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private sendLogs(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 61
    const-string v0, "https://mobilelogs.supersonic.com"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobilelogs"

    const-string v3, "k@r@puz"

    invoke-static {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
