.class public Lio/casper/android/n/a/b/w;
.super Lio/casper/android/n/a/b/a/a;
.source "UpdateSnapsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/a/b/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdatedSnapPayloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/b/w$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/b/w$a;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/a/b/w;->mUpdatedSnapPayloadList:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lio/casper/android/n/a/b/w;->mUpdatedSnapPayloadList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "/bq/update_snaps"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lio/casper/android/c/c/d/c;

    invoke-direct {v0}, Lio/casper/android/c/c/d/c;-><init>()V

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/Request;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 40
    iget-object v0, p0, Lio/casper/android/n/a/b/w;->mSnapchatAccount:Lio/casper/android/e/b/b;

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "added_friends_timestamp"

    iget-object v1, p0, Lio/casper/android/n/a/b/w;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    iget-object v0, p0, Lio/casper/android/n/a/b/w;->mUpdatedSnapPayloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/b/w$a;

    .line 50
    invoke-virtual {v0}, Lio/casper/android/n/a/b/w$a;->a()Lio/casper/android/n/a/c/b/w;

    move-result-object v5

    .line 52
    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v5}, Lio/casper/android/n/a/c/b/w;->h()I

    move-result v1

    int-to-double v6, v1

    .line 56
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v1, "t"

    invoke-static {}, Lio/casper/android/n/e/b;->e()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v9, "replayed"

    invoke-virtual {v0}, Lio/casper/android/n/a/b/w$a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0}, Lio/casper/android/n/a/b/w$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "c"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    :cond_2
    invoke-virtual {v5}, Lio/casper/android/n/a/c/b/w;->s()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    const-string v1, "es_id"

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_3
    const-string v0, "sv"

    invoke-virtual {v8, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v5}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :goto_2
    invoke-super {p0}, Lio/casper/android/n/a/b/a/a;->f()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 58
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 77
    :cond_5
    :try_start_1
    const-string v0, "json"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
