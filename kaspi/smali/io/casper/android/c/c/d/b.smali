.class public Lio/casper/android/c/c/d/b;
.super Ljava/lang/Object;
.source "JsonResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonResponseParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugSettingsManager:Lio/casper/android/l/f;

.field private mGson:Lcom/google/gson/Gson;

.field private mHttpRequest:Lio/casper/android/c/c/f/c;

.field private mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/c/c/d/b;->mGson:Lcom/google/gson/Gson;

    .line 32
    iput-object p1, p0, Lio/casper/android/c/c/d/b;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lio/casper/android/c/c/d/b;->mTClass:Ljava/lang/Class;

    .line 35
    new-instance v0, Lio/casper/android/l/f;

    iget-object v1, p0, Lio/casper/android/c/c/d/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/c/d/b;->mDebugSettingsManager:Lio/casper/android/l/f;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/c/c/f/c;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    .line 41
    return-void
.end method

.method public b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 50
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 53
    :try_start_1
    iget-object v0, p0, Lio/casper/android/c/c/d/b;->mGson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lio/casper/android/c/c/d/b;->mTClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 91
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    iget-object v3, p0, Lio/casper/android/c/c/d/b;->mDebugSettingsManager:Lio/casper/android/l/f;

    const-string v4, "reportAllJsonParserExceptions"

    invoke-virtual {v3, v4}, Lio/casper/android/l/f;->a(Ljava/lang/String;)Lio/casper/android/f/a;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lio/casper/android/c/c/d/b;->mDebugSettingsManager:Lio/casper/android/l/f;

    const-string v5, "reportJsonParserExceptionsForSnapchatLogin"

    invoke-virtual {v4, v5}, Lio/casper/android/l/f;->a(Ljava/lang/String;)Lio/casper/android/f/a;

    move-result-object v4

    .line 59
    iget-object v5, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    if-eqz v5, :cond_1

    .line 61
    new-instance v5, Lio/casper/android/f/b;

    invoke-direct {v5}, Lio/casper/android/f/b;-><init>()V

    .line 62
    iget-object v6, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    invoke-virtual {v6}, Lio/casper/android/c/c/f/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/casper/android/f/b;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, v2}, Lio/casper/android/f/b;->b(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    iget-object v2, v2, Lio/casper/android/c/c/f/c;->mHeaders:Ljava/util/TreeMap;

    invoke-virtual {v5, v2}, Lio/casper/android/f/b;->a(Ljava/util/Map;)V

    .line 65
    iget-object v2, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    iget-object v2, v2, Lio/casper/android/c/c/f/c;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v5, v2}, Lio/casper/android/f/b;->b(Ljava/util/Map;)V

    .line 66
    invoke-virtual {v5}, Lio/casper/android/f/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v5, "enabled"

    invoke-virtual {v3, v5}, Lio/casper/android/f/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 69
    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Lio/casper/android/f/a;->a(Ljava/lang/String;)Z

    move-result v5

    .line 70
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lio/casper/android/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    if-nez v3, :cond_0

    if-eqz v5, :cond_1

    iget-object v3, p0, Lio/casper/android/c/c/d/b;->mHttpRequest:Lio/casper/android/c/c/f/c;

    invoke-virtual {v3}, Lio/casper/android/c/c/f/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    new-instance v3, Lio/casper/android/exception/DebugException;

    invoke-direct {v3, v2, v0}, Lio/casper/android/exception/DebugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 80
    :cond_1
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_2

    .line 81
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Server responded with unexpected data!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 84
    :cond_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
