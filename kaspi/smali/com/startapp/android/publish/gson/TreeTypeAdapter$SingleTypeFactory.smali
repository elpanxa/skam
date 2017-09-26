.class Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/startapp/android/publish/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/startapp/android/publish/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/startapp/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    instance-of v0, p1, Lcom/startapp/android/publish/gson/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/startapp/android/publish/gson/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    .line 121
    instance-of v0, p1, Lcom/startapp/android/publish/gson/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/startapp/android/publish/gson/JsonDeserializer;

    :goto_1
    iput-object p1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/startapp/android/publish/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 125
    iput-object p2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    .line 126
    iput-boolean p3, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 127
    iput-object p4, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 128
    return-void

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 121
    goto :goto_1

    .line 124
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/startapp/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/startapp/android/publish/gson/TreeTypeAdapter$1;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/startapp/android/publish/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/Gson;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/startapp/android/publish/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/startapp/android/publish/gson/JsonSerializer;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/startapp/android/publish/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/gson/TreeTypeAdapter;-><init>(Lcom/startapp/android/publish/gson/JsonSerializer;Lcom/startapp/android/publish/gson/JsonDeserializer;Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 135
    goto :goto_1
.end method
