.class public Lcom/liamcottle/lib/okhttpwrapper/request/BodyRequest;
.super Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;
.source "BodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mRequestBody:Lcom/squareup/okhttp/RequestBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/HttpRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest()Lcom/squareup/okhttp/Request;
    .locals 4

    .prologue
    .line 15
    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/BodyRequest;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 19
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/BodyRequest;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/request/BodyRequest;->mRequestBody:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 25
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/squareup/okhttp/RequestBody;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/request/BodyRequest;->mRequestBody:Lcom/squareup/okhttp/RequestBody;

    .line 31
    return-void
.end method
