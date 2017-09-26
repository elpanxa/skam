.class public Lio/casper/android/n/a/b/x;
.super Lio/casper/android/n/a/b/a/a;
.source "UpdateStoriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/a/b/x$a;
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
.field private mUpdatedStoryPayloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/b/x$a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/a/b/x;->mUpdatedStoryPayloadList:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lio/casper/android/n/a/b/x;->mUpdatedStoryPayloadList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "/bq/update_stories"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 92
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
    .line 97
    new-instance v0, Lio/casper/android/c/c/d/c;

    invoke-direct {v0}, Lio/casper/android/c/c/d/c;-><init>()V

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/Request;
    .locals 7

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 46
    iget-object v0, p0, Lio/casper/android/n/a/b/x;->mUpdatedStoryPayloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/b/x$a;

    .line 48
    invoke-virtual {v0}, Lio/casper/android/n/a/b/x$a;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v3

    .line 49
    invoke-virtual {v0}, Lio/casper/android/n/a/b/x$a;->c()Lio/casper/android/n/a/c/b/k;

    move-result-object v4

    .line 51
    if-eqz v3, :cond_0

    .line 53
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 55
    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v4}, Lio/casper/android/n/a/c/b/k;->c()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    const-string v6, "a"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_1
    const-string v4, "id"

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v3, "screenshot_count"

    invoke-virtual {v0}, Lio/casper/android/n/a/b/x$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v0, "timestamp"

    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :goto_2
    invoke-super {p0}, Lio/casper/android/n/a/b/a/a;->f()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :cond_3
    :try_start_1
    const-string v0, "friend_stories"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
