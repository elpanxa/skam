.class final Lcom/startapp/android/publish/gson/TreeTypeAdapter;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/gson/TreeTypeAdapter$1;,
        Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/startapp/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/startapp/android/publish/gson/Gson;

.field private final serializer:Lcom/startapp/android/publish/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/startapp/android/publish/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/startapp/android/publish/gson/JsonSerializer;Lcom/startapp/android/publish/gson/JsonDeserializer;Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;Lcom/startapp/android/publish/gson/TypeAdapterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/startapp/android/publish/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/startapp/android/publish/gson/Gson;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    .line 45
    iput-object p2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    .line 46
    iput-object p3, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->gson:Lcom/startapp/android/publish/gson/Gson;

    .line 47
    iput-object p4, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    .line 48
    iput-object p5, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->skipPast:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/gson/JsonSerializer;Lcom/startapp/android/publish/gson/JsonDeserializer;Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/TreeTypeAdapter$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;-><init>(Lcom/startapp/android/publish/gson/JsonSerializer;Lcom/startapp/android/publish/gson/JsonDeserializer;Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;Lcom/startapp/android/publish/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->delegate:Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 77
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->gson:Lcom/startapp/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->skipPast:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/gson/Gson;->getDelegateAdapter(Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->delegate:Lcom/startapp/android/publish/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/startapp/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/startapp/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/startapp/android/publish/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->delegate()Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/startapp/android/publish/gson/internal/Streams;->parse(Lcom/startapp/android/publish/gson/stream/JsonReader;)Lcom/startapp/android/publish/gson/JsonElement;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->gson:Lcom/startapp/android/publish/gson/Gson;

    iget-object v3, v3, Lcom/startapp/android/publish/gson/Gson;->deserializationContext:Lcom/startapp/android/publish/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/startapp/android/publish/gson/JsonDeserializer;->deserialize(Lcom/startapp/android/publish/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->delegate()Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->typeToken:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->gson:Lcom/startapp/android/publish/gson/Gson;

    iget-object v2, v2, Lcom/startapp/android/publish/gson/Gson;->serializationContext:Lcom/startapp/android/publish/gson/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/startapp/android/publish/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/JsonSerializationContext;)Lcom/startapp/android/publish/gson/JsonElement;

    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lcom/startapp/android/publish/gson/internal/Streams;->write(Lcom/startapp/android/publish/gson/JsonElement;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
