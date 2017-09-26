.class public Lio/casper/android/c/b/b/a/a/h/a;
.super Ljava/lang/Object;
.source "Arxan.java"


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private server:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/h/a;->enabled:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/a;->server:Ljava/lang/String;

    return-object v0
.end method
