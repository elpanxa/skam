.class public final Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
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
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/startapp/android/publish/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/startapp/android/publish/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/startapp/android/publish/gson/internal/ObjectConstructor;

    .line 154
    iput-object p2, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/startapp/android/publish/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->NULL:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextNull()V

    .line 160
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/startapp/android/publish/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/startapp/android/publish/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->beginObject()V

    .line 167
    :goto_1
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 170
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_2

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 182
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
    .line 186
    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->beginObject()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 194
    iget-boolean v2, v0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, v0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 196
    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->endObject()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    goto :goto_0
.end method
