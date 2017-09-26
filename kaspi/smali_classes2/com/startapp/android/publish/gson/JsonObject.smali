.class public final Lcom/startapp/android/publish/gson/JsonObject;
.super Lcom/startapp/android/publish/gson/JsonElement;
.source "StartAppSDK"


# instance fields
.field private final members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/startapp/android/publish/gson/JsonElement;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/startapp/android/publish/gson/JsonNull;->INSTANCE:Lcom/startapp/android/publish/gson/JsonNull;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/startapp/android/publish/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/startapp/android/publish/gson/JsonObject;

    iget-object v0, p1, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/startapp/android/publish/gson/JsonElement;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/startapp/android/publish/gson/JsonObject;->members:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/JsonElement;

    return-object v0
.end method
