.class public Lcom/startapp/android/publish/g/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/startapp/android/publish/model/BaseResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/startapp/android/publish/model/BaseResponse;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/BaseRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v5, Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {v5}, Lcom/startapp/android/publish/gson/Gson;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;Lcom/startapp/android/publish/gson/Gson;)Lcom/startapp/android/publish/model/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;Lcom/startapp/android/publish/gson/Gson;)Lcom/startapp/android/publish/model/BaseResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/startapp/android/publish/model/BaseResponse;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/BaseRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/startapp/android/publish/gson/Gson;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/StringBuilder;IJ)V

    .line 33
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, p4}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/BaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lcom/startapp/android/publish/h/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing the JSON response to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/startapp/android/publish/h/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/BaseRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/StringBuilder;IJ)V

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/startapp/android/publish/h/a;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/h/a$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    const-string v1, "device-id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p1

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/StringBuilder;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/BaseRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 59
    if-eqz p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapp/android/publish/model/BaseRequest;->getRequestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_0
    const-string v0, "Transport"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending get to URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    invoke-static {p0, p3}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 66
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 68
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 70
    :try_start_0
    invoke-static {p0, p1, v3, p4}, Lcom/startapp/android/publish/h/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 83
    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    .line 73
    invoke-virtual {v4}, Lcom/startapp/android/publish/h/p;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ge v0, p5, :cond_2

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v4, p6, v4

    if-lez v4, :cond_1

    .line 77
    :try_start_1
    invoke-static {p6, p7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v4

    goto :goto_0

    .line 81
    :cond_2
    throw v4

    .line 85
    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/model/BaseRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)Z"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/StringBuilder;IJ)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    invoke-static/range {v0 .. v7}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/StringBuilder;IJ)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
