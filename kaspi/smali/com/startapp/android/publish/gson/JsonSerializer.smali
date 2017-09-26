.class public interface abstract Lcom/startapp/android/publish/gson/JsonSerializer;
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


# virtual methods
.method public abstract serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/startapp/android/publish/gson/JsonSerializationContext;)Lcom/startapp/android/publish/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/startapp/android/publish/gson/JsonSerializationContext;",
            ")",
            "Lcom/startapp/android/publish/gson/JsonElement;"
        }
    .end annotation
.end method
