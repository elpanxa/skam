.class Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

.field final synthetic val$labelToDelegate:Ljava/util/Map;

.field final synthetic val$subtypeToDelegate:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    iput-object p2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    iput-object p3, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1}, Lcom/startapp/android/publish/gson/internal/Streams;->parse(Lcom/startapp/android/publish/gson/stream/JsonReader;)Lcom/startapp/android/publish/gson/JsonElement;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/startapp/android/publish/gson/JsonElement;->getAsJsonObject()Lcom/startapp/android/publish/gson/JsonObject;

    move-result-object v0

    iget-object v2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;
    invoke-static {v2}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/startapp/android/publish/gson/JsonElement;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/startapp/android/publish/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot deserialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;
    invoke-static {v2}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it does not define a field named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;
    invoke-static {v2}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 210
    if-nez v0, :cond_1

    .line 211
    new-instance v0, Lcom/startapp/android/publish/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot deserialize "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;
    invoke-static {v3}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " subtype named "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; did you forget to register a subtype?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/TypeAdapter;->fromJsonTree(Lcom/startapp/android/publish/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonWriter;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;
    invoke-static {v0}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$200(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 222
    if-nez v1, :cond_0

    .line 223
    new-instance v0, Lcom/startapp/android/publish/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot serialize "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; did you forget to register a subtype?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-virtual {v1, p2}, Lcom/startapp/android/publish/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/startapp/android/publish/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/gson/JsonElement;->getAsJsonObject()Lcom/startapp/android/publish/gson/JsonObject;

    move-result-object v1

    .line 227
    iget-object v3, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;
    invoke-static {v3}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    new-instance v0, Lcom/startapp/android/publish/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot serialize "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it already defines a field named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;
    invoke-static {v2}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v2, Lcom/startapp/android/publish/gson/JsonObject;

    invoke-direct {v2}, Lcom/startapp/android/publish/gson/JsonObject;-><init>()V

    .line 232
    iget-object v3, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    # getter for: Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;
    invoke-static {v3}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapp/android/publish/gson/JsonPrimitive;

    invoke-direct {v4, v0}, Lcom/startapp/android/publish/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/startapp/android/publish/gson/JsonObject;->add(Ljava/lang/String;Lcom/startapp/android/publish/gson/JsonElement;)V

    .line 233
    invoke-virtual {v1}, Lcom/startapp/android/publish/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/JsonElement;

    invoke-virtual {v2, v1, v0}, Lcom/startapp/android/publish/gson/JsonObject;->add(Ljava/lang/String;Lcom/startapp/android/publish/gson/JsonElement;)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v2, p1}, Lcom/startapp/android/publish/gson/internal/Streams;->write(Lcom/startapp/android/publish/gson/JsonElement;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V

    .line 237
    return-void
.end method
