.class public final Lio/casper/android/util/e;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonSerializer"


# instance fields
.field protected final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/casper/android/util/e;-><init>(Lcom/google/gson/Gson;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/casper/android/util/e;->mGson:Lcom/google/gson/Gson;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lio/casper/android/util/e;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "JsonSerializer"

    invoke-static {v1, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    if-eqz p3, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_0
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lio/casper/android/util/e;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "JsonSerializer"

    invoke-static {v1, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    if-eqz p3, :cond_0

    .line 31
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_0
    throw v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lio/casper/android/util/e;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to serialize object."

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
