.class Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;


# direct methods
.method constructor <init>(Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 5

    .prologue
    .line 102
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    iget-object v1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;

    iget-object v1, v1, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-direct {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;-><init>(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 104
    instance-of v1, p2, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    sget-object v1, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_CONNECTION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    new-instance v1, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_0

    .line 111
    :cond_2
    sget-object v1, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->HTTP_CONNECTION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-virtual {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    .line 66
    new-instance v3, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;

    iget-object v0, v0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-direct {v3, v0}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;-><init>(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 68
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;

    iget-object v0, v0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseParser:Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;

    if-eqz v0, :cond_3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;

    iget-object v0, v0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseParser:Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;->parse(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 74
    invoke-virtual {v3, v2, v0}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 78
    invoke-virtual {v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->getCode()I

    move-result v4

    .line 80
    const/16 v0, 0x191

    if-eq v4, v0, :cond_0

    const/16 v0, 0x193

    if-eq v4, v0, :cond_0

    const/16 v0, 0x1f4

    if-ne v4, v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {v3, v2}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    .line 89
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_2
    new-instance v2, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-direct {v2, v4, v0}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_1

    .line 84
    :cond_2
    const-string v0, "Unknown Error"

    goto :goto_2

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HttpRequest ResponseParser not Set!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
