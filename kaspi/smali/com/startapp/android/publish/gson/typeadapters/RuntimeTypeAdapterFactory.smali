.class public final Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/startapp/android/publish/gson/TypeAdapterFactory;"
    }
.end annotation


# instance fields
.field private final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final labelToSubtype:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final subtypeToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeFieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    .line 131
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    .line 135
    iput-object p2, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/Gson;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TR;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/startapp/android/publish/gson/Gson;->getDelegateAdapter(Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v1

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    :cond_1
    new-instance v0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory$1;-><init>(Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public registerSubtype(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "types and labels must be unique"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/startapp/android/publish/gson/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-object p0
.end method
