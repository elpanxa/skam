.class public Lio/casper/android/c/b/b/a/a/d/b;
.super Ljava/lang/Object;
.source "AuthConfiguration.java"


# instance fields
.field private refreshOnLaunch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_on_launch"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field private validMillis:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "valid_millis"
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lio/casper/android/c/b/b/a/a/d/b;->refreshOnLaunch:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/a/a/d/b;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lio/casper/android/c/b/b/a/a/d/b;->validMillis:J

    return-wide v0
.end method
