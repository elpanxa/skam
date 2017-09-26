.class Lcom/startapp/android/publish/gson/Gson$4;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/Gson;->floatAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;
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
    .line 275
    iput-object p1, p0, Lcom/startapp/android/publish/gson/Gson$4;->this$0:Lcom/startapp/android/publish/gson/Gson;

    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 279
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/Gson$4;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson$4;->this$0:Lcom/startapp/android/publish/gson/Gson;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/gson/Gson;->access$000(Lcom/startapp/android/publish/gson/Gson;D)V

    .line 290
    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 275
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/Gson$4;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
