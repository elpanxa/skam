.class public Lio/casper/android/n/a/c/b/g;
.super Ljava/lang/Object;
.source "ConversationMessages.java"


# instance fields
.field private messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/q;",
            ">;"
        }
    .end annotation
.end field

.field private messaging_auth:Lio/casper/android/n/a/c/b/r;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messaging_auth"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lio/casper/android/n/a/c/b/g;->messages:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lio/casper/android/n/a/c/b/g;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/q;

    .line 41
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/q;->b()Lio/casper/android/n/a/c/b/q$a;

    move-result-object v3

    sget-object v4, Lio/casper/android/n/a/c/b/q$a;->SNAP:Lio/casper/android/n/a/c/b/q$a;

    if-ne v3, v4, :cond_0

    .line 42
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/q;->a()Lio/casper/android/n/a/c/b/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    return-object v1
.end method
