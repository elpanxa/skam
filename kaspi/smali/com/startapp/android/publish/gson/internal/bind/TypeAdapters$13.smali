.class final Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$13;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$13;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 352
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->BOOLEAN:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$13;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 363
    return-void
.end method
