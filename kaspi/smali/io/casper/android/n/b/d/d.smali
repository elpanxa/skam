.class public abstract Lio/casper/android/n/b/d/d;
.super Lio/casper/android/n/b/d/n;
.source "ConversationMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/b/d/d$a;
    }
.end annotation


# instance fields
.field private header:Lio/casper/android/n/b/d/d$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field private retried:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retried"
    .end annotation
.end field


# virtual methods
.method public c()Lio/casper/android/n/b/d/d$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/n/b/d/d;->header:Lio/casper/android/n/b/d/d$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationMessage{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/b/d/d;->header:Lio/casper/android/n/b/d/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
