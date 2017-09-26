.class public final Lcom/startapp/android/publish/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/startapp/android/publish/gson/internal/Excluder;

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

.field private fieldNamingPolicy:Lcom/startapp/android/publish/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/startapp/android/publish/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/startapp/android/publish/gson/internal/Excluder;->DEFAULT:Lcom/startapp/android/publish/gson/internal/Excluder;

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->excluder:Lcom/startapp/android/publish/gson/internal/Excluder;

    .line 70
    sget-object v0, Lcom/startapp/android/publish/gson/LongSerializationPolicy;->DEFAULT:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->longSerializationPolicy:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

    .line 71
    sget-object v0, Lcom/startapp/android/publish/gson/FieldNamingPolicy;->IDENTITY:Lcom/startapp/android/publish/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->fieldNamingPolicy:Lcom/startapp/android/publish/gson/FieldNamingStrategy;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 79
    iput v1, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->dateStyle:I

    .line 80
    iput v1, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->timeStyle:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 94
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 554
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Lcom/startapp/android/publish/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 562
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->newFactory(Lcom/startapp/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->newFactory(Lcom/startapp/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;->newFactory(Lcom/startapp/android/publish/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/startapp/android/publish/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_0
    return-void

    .line 556
    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 557
    new-instance v0, Lcom/startapp/android/publish/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/startapp/android/publish/gson/DefaultDateTypeAdapter;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/startapp/android/publish/gson/Gson;
    .locals 12

    .prologue
    .line 539
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/startapp/android/publish/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 545
    new-instance v0, Lcom/startapp/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->excluder:Lcom/startapp/android/publish/gson/internal/Excluder;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->fieldNamingPolicy:Lcom/startapp/android/publish/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->longSerializationPolicy:Lcom/startapp/android/publish/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v11}, Lcom/startapp/android/publish/gson/Gson;-><init>(Lcom/startapp/android/publish/gson/internal/Excluder;Lcom/startapp/android/publish/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/startapp/android/publish/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public registerTypeAdapterFactory(Lcom/startapp/android/publish/gson/TypeAdapterFactory;)Lcom/startapp/android/publish/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/startapp/android/publish/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-object p0
.end method
