.class public abstract Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/squareup/okhttp/Call;

.field private mCallback:Lcom/squareup/okhttp/Callback;

.field public mHeaders:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field public mRequestUrl:Ljava/lang/String;

.field public mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field public mResponseParser:Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mHeaders:Ljava/util/TreeMap;

    .line 60
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;

    invoke-direct {v0, p0}, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest$1;-><init>(Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;)V

    iput-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mCallback:Lcom/squareup/okhttp/Callback;

    .line 34
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 35
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 36
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setRetryOnConnectionFailure(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 134
    return-void
.end method

.method public executeAsync()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->prepareRequest()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mCall:Lcom/squareup/okhttp/Call;

    .line 57
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mCall:Lcom/squareup/okhttp/Call;

    iget-object v1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mCallback:Lcom/squareup/okhttp/Callback;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 58
    return-void
.end method

.method public abstract prepareRequest()Lcom/squareup/okhttp/Request;
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    .line 126
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mRequestUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setResponseParser(Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;->mResponseParser:Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;

    .line 130
    return-void
.end method
