.class Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;
.super Landroid/os/AsyncTask;
.source "ImojiNetworkingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeserializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/imojiapp/imoji/sdk/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<TV;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<TV;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mJsonString:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 253
    iput-object p3, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mClazz:Ljava/lang/Class;

    .line 254
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;)Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    # getter for: Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->access$100()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mJsonString:Ljava/lang/String;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    check-cast p1, [Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->doInBackground([Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;)Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    const-string v1, "NETWORK_ERROR"

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    iget-object v1, p1, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;->status:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->mCallback:Lcom/imojiapp/imoji/sdk/Callback;

    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/imojiapp/imoji/sdk/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 244
    check-cast p1, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;->onPostExecute(Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;)V

    return-void
.end method
