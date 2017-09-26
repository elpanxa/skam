.class Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/startapp/android/publish/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/startapp/android/publish/gson/reflect/TypeToken;ZZ)Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/startapp/android/publish/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
    .locals 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/startapp/android/publish/gson/Gson;

    iput-object p6, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    iput-object p7, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/startapp/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/Gson;->getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/startapp/android/publish/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    :cond_1
    return-void
.end method

.method write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/startapp/android/publish/gson/Gson;

    iget-object v3, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/startapp/android/publish/gson/TypeAdapter;

    iget-object v4, p0, Lcom/startapp/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v4}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/startapp/android/publish/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 90
    invoke-virtual {v1, p1, v0}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 91
    return-void
.end method
