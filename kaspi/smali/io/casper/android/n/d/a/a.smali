.class public Lio/casper/android/n/d/a/a;
.super Lcom/liamcottle/lib/okhttpwrapper/request/GetRequest;
.source "SnapchatGetRequest.java"


# instance fields
.field private mAccountManager:Lio/casper/android/l/s;

.field public mContext:Landroid/content/Context;

.field private mEndpoint:Ljava/lang/String;

.field public mSnapchatAccount:Lio/casper/android/e/b/b;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field public mTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/GetRequest;-><init>()V

    .line 27
    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/d/a/a;->mTimestamp:Ljava/lang/Long;

    .line 31
    iput-object p1, p0, Lio/casper/android/n/d/a/a;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/d/a/a;->mAccountManager:Lio/casper/android/l/s;

    .line 34
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    .line 36
    sget-object v0, Lio/casper/android/n/a;->KEY_HEADER_USER_AGENT:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/d/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lio/casper/android/n/a;->KEY_HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

    sget-object v1, Lio/casper/android/n/a;->HEADER_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/d/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lio/casper/android/n/a;->KEY_HEADER_ACCEPT_LOCALE:Ljava/lang/String;

    sget-object v1, Lio/casper/android/n/a;->HEADER_ACCEPT_LOCALE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/d/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 42
    return-void
.end method

.method static synthetic a(Lio/casper/android/n/d/a/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/GetRequest;->executeAsync()V

    return-void
.end method

.method static synthetic b(Lio/casper/android/n/d/a/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/GetRequest;->executeAsync()V

    return-void
.end method

.method static synthetic c(Lio/casper/android/n/d/a/a;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/n/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_USERNAME:Ljava/lang/String;

    iget-object v2, p0, Lio/casper/android/n/d/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/n/d/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_REQ_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/d/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    sget-object v0, Lio/casper/android/n/a;->KEY_PARAM_TIMESTAMP:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/d/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lio/casper/android/n/d/a/a;->mEndpoint:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/n/d/a/a;->setRequestUrl(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public executeAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    const-string v1, "*"

    invoke-virtual {v0, v1, v3}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    const-string v2, "*"

    invoke-virtual {v1, v2, v4}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lio/casper/android/n/d/a/a;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 65
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    iget-object v2, p0, Lio/casper/android/n/d/a/a;->mEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lio/casper/android/n/d/a/a;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lio/casper/android/n/d/a/a;->mHeaders:Ljava/util/TreeMap;

    sget-object v1, Lio/casper/android/n/a;->KEY_HEADER_SNAPCHAT_CLIENT_AUTH_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/n/d/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v1, Lio/casper/android/n/d/a/a$1;

    invoke-direct {v1, p0}, Lio/casper/android/n/d/a/a$1;-><init>(Lio/casper/android/n/d/a/a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/l/i;->a(Lio/casper/android/l/i$a;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p0}, Lio/casper/android/n/d/a/a;->b(Lio/casper/android/n/d/a/a;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lio/casper/android/n/d/a/a$2;

    invoke-direct {v0, p0, p1}, Lio/casper/android/n/d/a/a$2;-><init>(Lio/casper/android/n/d/a/a;Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 127
    invoke-super {p0, v0}, Lcom/liamcottle/lib/okhttpwrapper/request/GetRequest;->setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 129
    return-void
.end method
