.class Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22;->create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22;

.field final synthetic val$dateTypeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22;Lcom/startapp/android/publish/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->this$0:Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22;

    iput-object p2, p0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 527
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters$22$1;->val$dateTypeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 532
    return-void
.end method
