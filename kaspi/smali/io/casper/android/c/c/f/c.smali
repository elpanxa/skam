.class public abstract Lio/casper/android/c/c/f/c;
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


# static fields
.field private static final ERROR_MESSAGE_CONNECTION:Ljava/lang/String; = "Server connection failed. Please check your Internet connection."

.field public static final KEY_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final TAG:Ljava/lang/String; = "HttpRequest"


# instance fields
.field public mFiles:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lio/casper/android/c/c/e/a;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHttpCallback:Lio/casper/android/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/casper/android/c/c/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mInternalCallback:Lcom/squareup/okhttp/Callback;

.field public mMainHandler:Landroid/os/Handler;

.field public mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field public mParams:Ljava/util/TreeMap;
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

.field private mRequestBody:Lcom/squareup/okhttp/RequestBody;

.field private mSendAsMultipartRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mHeaders:Ljava/util/TreeMap;

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mFiles:Ljava/util/TreeMap;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mMainHandler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lio/casper/android/c/c/f/c$1;

    invoke-direct {v0, p0}, Lio/casper/android/c/c/f/c$1;-><init>(Lio/casper/android/c/c/f/c;)V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mInternalCallback:Lcom/squareup/okhttp/Callback;

    .line 46
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 47
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 48
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setRetryOnConnectionFailure(Z)V

    .line 49
    return-void
.end method

.method public static a(Lcom/squareup/okhttp/Request;Ljava/lang/String;)Lcom/squareup/okhttp/Response;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mHttpCallback:Lio/casper/android/c/c/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/c/c/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/c/c/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lio/casper/android/c/c/f/c;->mHttpCallback:Lio/casper/android/c/c/a/a;

    .line 106
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lio/casper/android/c/c/f/c;->f()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/c/c/f/c;->mInternalCallback:Lcom/squareup/okhttp/Callback;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;Lio/casper/android/c/c/e/a;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mFiles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lio/casper/android/c/c/f/c;->mSendAsMultipartRequest:Z

    .line 67
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;)Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public abstract c()Lio/casper/android/c/c/f/b;
.end method

.method public abstract d()Lio/casper/android/c/c/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Lcom/squareup/okhttp/Request;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 111
    invoke-virtual {p0}, Lio/casper/android/c/c/f/c;->e()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 114
    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 116
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v3, v1, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/c/c/f/c;->c()Lio/casper/android/c/c/f/b;

    move-result-object v0

    .line 128
    sget-object v1, Lio/casper/android/c/c/f/c$2;->$SwitchMap$io$casper$android$api$framework$request$HttpMethod:[I

    invoke-virtual {v0}, Lio/casper/android/c/c/f/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 134
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 146
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 154
    :pswitch_1
    iget-boolean v0, p0, Lio/casper/android/c/c/f/c;->mSendAsMultipartRequest:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mFiles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 156
    :cond_5
    new-instance v2, Lcom/squareup/okhttp/MultipartBuilder;

    const-string v0, "Boundary+0xAbCdEfGbOuNdArY"

    invoke-direct {v2, v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 159
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 165
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v5}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    const-string v5, "text/plain"

    invoke-static {v5}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_3

    .line 170
    :cond_7
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mFiles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/c/e/a;

    .line 175
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 177
    invoke-virtual {v0}, Lio/casper/android/c/c/e/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-virtual {v0}, Lio/casper/android/c/c/e/a;->b()Ljava/io/File;

    move-result-object v0

    .line 180
    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    .line 181
    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static {v6}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v5}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_4

    .line 188
    :cond_9
    invoke-virtual {v2}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 189
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    .line 193
    :cond_a
    new-instance v2, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v2}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 194
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v0, :cond_b

    .line 200
    invoke-virtual {v2, v1, v0}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_5

    .line 205
    :cond_c
    invoke-virtual {v2}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 206
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    .line 216
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mRequestBody:Lcom/squareup/okhttp/RequestBody;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mRequestBody:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto/16 :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public k()Lio/casper/android/c/c/g/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/g/a",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mOkHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lio/casper/android/c/c/f/c;->f()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, Lio/casper/android/c/c/f/c;->a(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lio/casper/android/c/c/b/a;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Parsing Response was Cancelled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server connection failed. Please check your Internet connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    throw v0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Lio/casper/android/c/c/f/c;->d()Lio/casper/android/c/c/d/d;

    move-result-object v0

    .line 90
    :try_start_1
    new-instance v3, Lio/casper/android/c/c/g/a;

    invoke-interface {v0, v2}, Lio/casper/android/c/c/d/d;->b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lio/casper/android/c/c/g/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 91
    :catch_1
    move-exception v0

    .line 92
    :try_start_2
    const-string v3, "HttpRequest"

    const-string v4, "Returning SynchronousResponse failed with Exception"

    invoke-static {v3, v4, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v3, Lio/casper/android/c/c/b/a;

    invoke-direct {v3, v1, v0}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/a/a;)V

    .line 102
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 256
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lio/casper/android/c/c/f/c;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 260
    return-void
.end method
