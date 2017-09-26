.class public final Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    .line 42
    return-void
.end method


# virtual methods
.method public create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 4
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
    .line 45
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lcom/startapp/android/publish/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/startapp/android/publish/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/gson/Gson;->getAdapter(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/gson/internal/ConstructorConstructor;->get(Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/internal/ObjectConstructor;

    move-result-object v3

    .line 57
    new-instance v0, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/startapp/android/publish/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/startapp/android/publish/gson/Gson;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/TypeAdapter;Lcom/startapp/android/publish/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
