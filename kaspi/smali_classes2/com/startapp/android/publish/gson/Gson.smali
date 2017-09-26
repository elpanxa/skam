.class public final Lcom/startapp/android/publish/gson/Gson;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/startapp/android/publish/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/startapp/android/publish/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 175
    sget-object v1, Lcom/startapp/android/publish/gson/internal/Excluder;->DEFAULT:Lcom/startapp/android/publish/gson/internal/Excluder;

    sget-object v2, Lcom/startapp/android/publish/gson/FieldNamingPolicy;->IDENTITY:Lcom/startapp/android/publish/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/startapp/android/publish/gson/LongSerializationPolicy;->DEFAULT:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/startapp/android/publish/gson/Gson;-><init>(Lcom/startapp/android/publish/gson/internal/Excluder;Lcom/startapp/android/publish/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/startapp/android/publish/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/startapp/android/publish/gson/internal/Excluder;Lcom/startapp/android/publish/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/startapp/android/publish/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/internal/Excluder;",
            "Lcom/startapp/android/publish/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/startapp/android/publish/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/startapp/android/publish/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/startapp/android/publish/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/gson/Gson$1;-><init>(Lcom/startapp/android/publish/gson/Gson;)V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->deserializationContext:Lcom/startapp/android/publish/gson/JsonDeserializationContext;

    .line 131
    new-instance v0, Lcom/startapp/android/publish/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/gson/Gson$2;-><init>(Lcom/startapp/android/publish/gson/Gson;)V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->serializationContext:Lcom/startapp/android/publish/gson/JsonSerializationContext;

    .line 187
    new-instance v0, Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    .line 188
    iput-boolean p4, p0, Lcom/startapp/android/publish/gson/Gson;->serializeNulls:Z

    .line 189
    iput-boolean p6, p0, Lcom/startapp/android/publish/gson/Gson;->generateNonExecutableJson:Z

    .line 190
    iput-boolean p7, p0, Lcom/startapp/android/publish/gson/Gson;->htmlSafe:Z

    .line 191
    iput-boolean p8, p0, Lcom/startapp/android/publish/gson/Gson;->prettyPrinting:Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/startapp/android/publish/gson/Gson;->longAdapter(Lcom/startapp/android/publish/gson/LongSerializationPolicy;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/startapp/android/publish/gson/TypeAdapter;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/startapp/android/publish/gson/Gson;->doubleAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/startapp/android/publish/gson/TypeAdapter;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/startapp/android/publish/gson/Gson;->floatAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/startapp/android/publish/gson/TypeAdapter;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/startapp/android/publish/gson/TypeAdapter;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/startapp/android/publish/gson/TypeAdapter;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/Gson;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/startapp/android/publish/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/Gson;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/startapp/android/publish/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/Gson;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;Lcom/startapp/android/publish/gson/FieldNamingStrategy;Lcom/startapp/android/publish/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->factories:Ljava/util/List;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/gson/Gson;D)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/startapp/android/publish/gson/stream/JsonReader;)V
    .locals 2

    .prologue
    .line 776
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/gson/stream/JsonToken;->END_DOCUMENT:Lcom/startapp/android/publish/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 777
    new-instance v0, Lcom/startapp/android/publish/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/startapp/android/publish/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 781
    :catch_1
    move-exception v0

    .line 782
    new-instance v1, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 784
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3

    .prologue
    .line 296
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    sget-object v0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 251
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/startapp/android/publish/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/gson/Gson$3;-><init>(Lcom/startapp/android/publish/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    sget-object v0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/startapp/android/publish/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/gson/Gson$4;-><init>(Lcom/startapp/android/publish/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/startapp/android/publish/gson/LongSerializationPolicy;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/LongSerializationPolicy;",
            ")",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/startapp/android/publish/gson/LongSerializationPolicy;->DEFAULT:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 305
    sget-object v0, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapters;->LONG:Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/startapp/android/publish/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/gson/Gson$5;-><init>(Lcom/startapp/android/publish/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/startapp/android/publish/gson/stream/JsonWriter;
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    .line 640
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 642
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 643
    iget-boolean v1, p0, Lcom/startapp/android/publish/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 644
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/startapp/android/publish/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 647
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/startapp/android/publish/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 796
    .line 797
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 798
    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->setLenient(Z)V

    .line 800
    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->peek()Lcom/startapp/android/publish/gson/stream/JsonToken;

    .line 801
    const/4 v1, 0x0

    .line 802
    invoke-static {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v0

    .line 803
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    .line 804
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 821
    invoke-virtual {p1, v2}, Lcom/startapp/android/publish/gson/stream/JsonReader;->setLenient(Z)V

    :goto_0
    return-object v0

    .line 806
    :catch_0
    move-exception v0

    .line 811
    if-eqz v1, :cond_0

    .line 812
    const/4 v0, 0x0

    .line 821
    invoke-virtual {p1, v2}, Lcom/startapp/android/publish/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 814
    :cond_0
    :try_start_1
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/startapp/android/publish/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    .line 815
    :catch_1
    move-exception v0

    .line 816
    :try_start_2
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 817
    :catch_2
    move-exception v0

    .line 819
    new-instance v1, Lcom/startapp/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Lcom/startapp/android/publish/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 769
    invoke-virtual {p0, v0, p2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Lcom/startapp/android/publish/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 770
    invoke-static {v1, v0}, Lcom/startapp/android/publish/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/startapp/android/publish/gson/stream/JsonReader;)V

    .line 771
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 691
    invoke-static {p2}, Lcom/startapp/android/publish/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 719
    :goto_0
    return-object v0

    .line 717
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, v0, p2}, Lcom/startapp/android/publish/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 334
    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 339
    const/4 v1, 0x0

    .line 340
    if-nez v0, :cond_5

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    iget-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 343
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 347
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter;

    .line 348
    if-nez v0, :cond_0

    .line 353
    :try_start_0
    new-instance v3, Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter;

    invoke-direct {v3}, Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 354
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/startapp/android/publish/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    .line 357
    invoke-interface {v0, p0, p1}, Lcom/startapp/android/publish/gson/TypeAdapterFactory;->create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v3, v0}, Lcom/startapp/android/publish/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/startapp/android/publish/gson/TypeAdapter;)V

    .line 360
    iget-object v3, p0, Lcom/startapp/android/publish/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 364
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    .line 424
    if-nez v1, :cond_1

    .line 425
    if-ne v0, p1, :cond_0

    .line 426
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/startapp/android/publish/gson/TypeAdapterFactory;->create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    return-object v0

    .line 436
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toJson(Lcom/startapp/android/publish/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 613
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Lcom/startapp/android/publish/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    sget-object v0, Lcom/startapp/android/publish/gson/JsonNull;->INSTANCE:Lcom/startapp/android/publish/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Lcom/startapp/android/publish/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 528
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lcom/startapp/android/publish/gson/JsonElement;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V
    .locals 5

    .prologue
    .line 655
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 657
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 658
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 659
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 660
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 662
    :try_start_0
    invoke-static {p1, p2}, Lcom/startapp/android/publish/gson/internal/Streams;->write(Lcom/startapp/android/publish/gson/JsonElement;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {p2, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 667
    invoke-virtual {p2, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 668
    invoke-virtual {p2, v3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 670
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    :try_start_1
    new-instance v4, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 667
    invoke-virtual {p2, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 668
    invoke-virtual {p2, v3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public toJson(Lcom/startapp/android/publish/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 627
    :try_start_0
    invoke-static {p2}, Lcom/startapp/android/publish/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    move-result-object v0

    .line 628
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Lcom/startapp/android/publish/gson/JsonElement;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V
    .locals 5

    .prologue
    .line 586
    invoke-static {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    .line 587
    invoke-virtual {p3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 588
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 589
    invoke-virtual {p3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 590
    iget-boolean v3, p0, Lcom/startapp/android/publish/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 591
    invoke-virtual {p3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 592
    iget-boolean v4, p0, Lcom/startapp/android/publish/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 594
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {p3, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 599
    invoke-virtual {p3, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 600
    invoke-virtual {p3, v3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 602
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    :try_start_1
    new-instance v4, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setLenient(Z)V

    .line 599
    invoke-virtual {p3, v2}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 600
    invoke-virtual {p3, v3}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 572
    :try_start_0
    invoke-static {p3}, Lcom/startapp/android/publish/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/startapp/android/publish/gson/stream/JsonWriter;

    move-result-object v0

    .line 573
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/startapp/android/publish/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/gson/Gson;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
