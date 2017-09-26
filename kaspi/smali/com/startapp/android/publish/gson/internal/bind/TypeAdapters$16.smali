.class final Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$16;
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
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$16;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$16;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 415
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 416
    return-void

    .line 415
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
