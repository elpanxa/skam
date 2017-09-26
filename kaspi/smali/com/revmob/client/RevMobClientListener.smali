.class public interface abstract Lcom/revmob/client/RevMobClientListener;
.super Ljava/lang/Object;
.source "RevMobClientListener.java"


# virtual methods
.method public abstract handleError(Ljava/lang/String;)V
.end method

.method public abstract handleResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
