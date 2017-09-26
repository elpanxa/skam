.class public Lio/casper/android/c/b/b/a/a/h/b;
.super Ljava/lang/Object;
.source "Chat.java"


# instance fields
.field private connect:Lio/casper/android/c/b/b/a/a/h/a/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect"
    .end annotation
.end field

.field private sessionPingEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_ping_enabled"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/h/b;->sessionPingEnabled:Z

    return v0
.end method

.method public b()Lio/casper/android/c/b/b/a/a/h/a/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/h/b;->connect:Lio/casper/android/c/b/b/a/a/h/a/a;

    return-object v0
.end method
