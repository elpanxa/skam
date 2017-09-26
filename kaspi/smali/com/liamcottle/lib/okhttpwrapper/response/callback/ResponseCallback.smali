.class public interface abstract Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
.super Ljava/lang/Object;
.source "ResponseCallback.java"


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
.method public abstract onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
.end method

.method public abstract onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;",
            "TT;)V"
        }
    .end annotation
.end method
