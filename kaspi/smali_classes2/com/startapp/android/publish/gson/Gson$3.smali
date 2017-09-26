.class Lcom/startapp/android/publish/gson/Gson$3;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/Gson;->doubleAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/gson/Gson;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/Gson;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/startapp/android/publish/gson/Gson$3;->this$0:Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/Gson$3;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 260
    if-nez p2, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/startapp/android/publish/gson/Gson$3;->this$0:Lcom/startapp/android/publish/gson/Gson;

    # invokes: Lcom/startapp/android/publish/gson/Gson;->checkValidFloatingPoint(D)V
    invoke-static {v2, v0, v1}, Lcom/startapp/android/publish/gson/Gson;->access$000(Lcom/startapp/android/publish/gson/Gson;D)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/Gson$3;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
