.class final Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$19;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$19;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$19;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/net/URI;)V

    return-void
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 474
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 475
    return-void

    .line 474
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
