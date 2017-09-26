.class public abstract Lcom/startapp/android/publish/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonTree(Lcom/startapp/android/publish/gson/JsonElement;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    new-instance v0, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeReader;-><init>(Lcom/startapp/android/publish/gson/JsonElement;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/startapp/android/publish/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/startapp/android/publish/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v0}, Lcom/startapp/android/publish/gson/internal/bind/JsonTreeWriter;->get()Lcom/startapp/android/publish/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Lcom/startapp/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation
.end method
