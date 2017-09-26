.class public Lio/casper/android/n/a/c/b/f;
.super Ljava/lang/Object;
.source "Conversation.java"


# instance fields
.field private conversation_messages:Lio/casper/android/n/a/c/b/g;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_messages"
    .end annotation
.end field

.field private conversation_state:Lio/casper/android/n/a/c/b/h;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_state"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private iter_token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iter_token"
    .end annotation
.end field

.field private last_interaction_ts:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_interaction_ts"
    .end annotation
.end field

.field private last_snap:Lio/casper/android/n/a/c/b/w;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_snap"
    .end annotation
.end field

.field private participants:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participants"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pending_chats_for:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending_chats_for"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->participants:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->pending_chats_for:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->iter_token:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->id:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lio/casper/android/n/a/c/b/g;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->conversation_messages:Lio/casper/android/n/a/c/b/g;

    return-object v0
.end method

.method public f()Lio/casper/android/n/a/c/b/w;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->last_snap:Lio/casper/android/n/a/c/b/w;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/casper/android/n/a/c/b/f;->iter_token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
