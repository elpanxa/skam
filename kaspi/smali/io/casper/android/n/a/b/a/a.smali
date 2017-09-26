.class public abstract Lio/casper/android/n/a/b/a/a;
.super Lio/casper/android/c/c/f/c;
.source "SnapchatRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/casper/android/c/c/f/c",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final HEADER_CLIENT_AUTH:Ljava/lang/String; = "X-Snapchat-Client-Auth"

.field public static final HEADER_CLIENT_AUTH_TOKEN:Ljava/lang/String; = "X-Snapchat-Client-Auth-Token"

.field private static final STATIC_ZELTA_LOCK:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;

.field public mSnapchatAccount:Lio/casper/android/e/b/b;

.field public mSnapchatAccountManager:Lio/casper/android/l/s;

.field public mSnapchatManager:Lio/casper/android/l/t;

.field public mTimestamp:Ljava/lang/String;

.field private mZeltaTable:Lio/casper/android/n/c/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/casper/android/n/a/b/a/a;->STATIC_ZELTA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lio/casper/android/c/c/f/c;-><init>()V

    .line 48
    invoke-static {}, Lio/casper/android/n/c/a/i;->i()Lio/casper/android/n/c/a/i;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    .line 59
    iput-object p1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 62
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 63
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    .line 65
    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mTimestamp:Ljava/lang/String;

    .line 67
    const-string v0, "User-Agent"

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "Accept-Language"

    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "Accept-Locale"

    invoke-static {}, Lio/casper/android/n/e/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 73
    return-void
.end method

.method static synthetic a(Lio/casper/android/n/a/b/a/a;)Lio/casper/android/l/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;->b(Lio/casper/android/c/c/a/a;)V

    return-void
.end method

.method private b(Lio/casper/android/c/c/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/c/c/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/casper/android/n/a/b/a/a$2;

    invoke-direct {v1, p0, p1}, Lio/casper/android/n/a/b/a/a$2;-><init>(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    return-void
.end method

.method static synthetic b(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/a/a;)V

    return-void
.end method

.method private h()Lio/casper/android/c/c/g/a;
    .locals 8
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
    .line 165
    sget-object v0, Lio/casper/android/n/a;->KEY_PARAM_REQ_TOKEN:Ljava/lang/String;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->l()V

    .line 169
    invoke-super {p0}, Lio/casper/android/c/c/f/c;->k()Lio/casper/android/c/c/g/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lio/casper/android/c/c/b/a;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Exception;

    iget-object v4, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    const v5, 0x7f070074

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lio/casper/android/c/c/b/a;-><init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lio/casper/android/c/c/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/c/c/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mHeaders:Ljava/util/TreeMap;

    const-string v1, "X-Snapchat-Client-Auth-Token"

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lio/casper/android/o/e;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    new-instance v2, Lio/casper/android/n/a/b/a/a$1;

    invoke-direct {v2, p0, p1}, Lio/casper/android/n/a/b/a/a$1;-><init>(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V

    invoke-direct {v0, v1, v3, v3, v2}, Lio/casper/android/o/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/e$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 151
    invoke-virtual {v0, v1}, Lio/casper/android/o/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;->b(Lio/casper/android/c/c/a/a;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-super {p0, p1}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method

.method public a(Lio/casper/android/c/e/b/b/a;)V
    .locals 9

    .prologue
    .line 462
    :try_start_0
    const-string v0, "HttpRequest"

    const-string v1, "Initializing ZeltaEndpoint: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->c()Ljava/util/Map;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lio/casper/android/c/e/b/b/a;->d()Ljava/util/Map;

    move-result-object v2

    .line 467
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 468
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    const-string v4, "HttpRequest"

    const-string v5, "ZeltaEndpoint[%s] provided Header %s=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const-string v1, "HttpRequest"

    const-string v2, "Initializing ZeltaEndpoint failed"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    :cond_0
    return-void

    .line 480
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 481
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    const-string v3, "HttpRequest"

    const-string v4, "ZeltaEndpoint[%s] provided Param %s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/squareup/okhttp/Response;)Z
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 532
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->l()V

    .line 534
    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lio/casper/android/c/c/f/c;->a(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    const-string v0, ""

    .line 204
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v1, :cond_1

    .line 205
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mTimestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/casper/android/n/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 208
    :goto_0
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Lio/casper/android/c/a/a/a;

    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lio/casper/android/c/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/c/a/a/a;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/a/b/b;

    .line 214
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/casper/android/c/a/b/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0}, Lio/casper/android/c/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 229
    :cond_0
    :goto_1
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v2, "HttpRequest"

    const-string v3, "Arxan Token Request failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/Request;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 504
    sget-object v0, Lio/casper/android/n/a;->KEY_PARAM_USERNAME:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mParams:Ljava/util/TreeMap;

    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    sget-object v0, Lio/casper/android/n/a;->KEY_PARAM_TIMESTAMP:Ljava/lang/String;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    const-string v1, "*"

    invoke-virtual {v0, v1, v3}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    const-string v2, "*"

    invoke-virtual {v1, v2, v4}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 515
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 517
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lio/casper/android/l/t;->a(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 521
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 523
    invoke-super {p0}, Lio/casper/android/c/c/f/c;->f()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method public k()Lio/casper/android/c/c/g/a;
    .locals 3
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
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mHeaders:Ljava/util/TreeMap;

    const-string v1, "X-Snapchat-Client-Auth-Token"

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lio/casper/android/o/e;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2, v2}, Lio/casper/android/o/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/casper/android/o/e$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lio/casper/android/o/e;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "X-Snapchat-Client-Auth-Token"

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/casper/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-direct {p0}, Lio/casper/android/n/a/b/a/a;->h()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 97
    :cond_1
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 105
    :cond_2
    invoke-super {p0}, Lio/casper/android/c/c/f/c;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    goto :goto_0
.end method

.method public l()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 317
    sget-object v4, Lio/casper/android/n/a/b/a/a;->STATIC_ZELTA_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 319
    :try_start_0
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->l()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 321
    const-string v1, ""

    .line 322
    iget-object v3, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v3, :cond_0

    .line 323
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v3, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v3}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    monitor-exit v4

    .line 456
    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    .line 330
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lio/casper/android/n/c/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/c/e/b/b/a;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/casper/android/c/e/b/b/a;->e()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 333
    const-string v0, "HttpRequest"

    const-string v2, "Using Cached ZeltaEndpoint[%s] expires in %sms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lio/casper/android/c/e/b/b/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lio/casper/android/c/e/b/b/a;->e()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0, v1}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/c/e/b/b/a;)V

    .line 336
    monitor-exit v4

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 340
    :cond_1
    :try_start_1
    const-string v1, "HttpRequest"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Fetching ZeltaEndpoint from Server"

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->h()Ljava/lang/String;

    move-result-object v5

    .line 344
    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :sswitch_0
    const-string v2, "ios"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v0, "android"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 348
    :pswitch_0
    new-instance v0, Lio/casper/android/c/e/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/e/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/c/e/a/a;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/e/b/a;

    .line 351
    if-nez v0, :cond_3

    .line 352
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Null Response from Server"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3
    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_4
    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 361
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v2, v1}, Lio/casper/android/l/t;->a(Ljava/lang/String;)V

    .line 364
    :cond_5
    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->e()Lio/casper/android/c/e/b/b/b;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_6

    .line 366
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    const-string v1, "HttpRequest"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Forcing expiration of all ZeltaEndpoints"

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/i;->f()V

    .line 372
    :cond_6
    invoke-virtual {v0}, Lio/casper/android/c/e/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_d

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/e/b/b/a;

    .line 377
    invoke-virtual {v0}, Lio/casper/android/c/e/b/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 378
    iget-object v5, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v5, v2}, Lio/casper/android/n/c/a/i;->a(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    invoke-virtual {p0, v0}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/c/e/b/b/a;)V

    .line 384
    :cond_7
    invoke-virtual {v0, v3}, Lio/casper/android/c/e/b/b/a;->b(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v2, v0}, Lio/casper/android/n/c/a/i;->b(Lio/casper/android/e/a/d;)J

    goto :goto_2

    .line 398
    :pswitch_1
    new-instance v0, Lio/casper/android/c/f/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/f/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/c/f/a/a;->k()Lio/casper/android/c/c/g/a;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/f/b/a;

    .line 401
    if-nez v0, :cond_8

    .line 402
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Null Response from Server"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_8
    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_9

    .line 406
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_9
    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 411
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v2, v1}, Lio/casper/android/l/t;->a(Ljava/lang/String;)V

    .line 414
    :cond_a
    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->e()Lio/casper/android/c/e/b/b/b;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_b

    .line 416
    invoke-virtual {v1}, Lio/casper/android/c/e/b/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 417
    const-string v1, "HttpRequest"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Forcing expiration of all ZeltaEndpoints"

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v1}, Lio/casper/android/n/c/a/i;->f()V

    .line 422
    :cond_b
    invoke-virtual {v0}, Lio/casper/android/c/f/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_d

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/e/b/b/a;

    .line 427
    invoke-virtual {v0}, Lio/casper/android/c/e/b/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 428
    iget-object v5, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v5, v2}, Lio/casper/android/n/c/a/i;->a(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lio/casper/android/n/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 431
    invoke-virtual {p0, v0}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/c/e/b/b/a;)V

    .line 434
    :cond_c
    invoke-virtual {v0, v3}, Lio/casper/android/c/e/b/b/a;->b(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lio/casper/android/n/a/b/a/a;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v2, v0}, Lio/casper/android/n/c/a/i;->b(Lio/casper/android/e/a/d;)J

    goto :goto_3

    .line 454
    :cond_d
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        -0x3357c991 -> :sswitch_1
        0x1980d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
