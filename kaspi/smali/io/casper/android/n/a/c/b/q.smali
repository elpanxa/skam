.class public Lio/casper/android/n/a/c/b/q;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/a/c/b/q$a;
    }
.end annotation


# instance fields
.field private chat_message:Lio/casper/android/n/a/c/b/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message"
    .end annotation
.end field

.field private iter_token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iter_token"
    .end annotation
.end field

.field private snap:Lio/casper/android/n/a/c/b/w;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/w;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/n/a/c/b/q;->snap:Lio/casper/android/n/a/c/b/w;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/b/q$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/casper/android/n/a/c/b/q;->snap:Lio/casper/android/n/a/c/b/w;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lio/casper/android/n/a/c/b/q$a;->SNAP:Lio/casper/android/n/a/c/b/q$a;

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/a/c/b/q;->chat_message:Lio/casper/android/n/a/c/b/b;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lio/casper/android/n/a/c/b/q$a;->CHAT_MESSAGE:Lio/casper/android/n/a/c/b/q$a;

    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lio/casper/android/n/a/c/b/q$a;->UNKNOWN:Lio/casper/android/n/a/c/b/q$a;

    goto :goto_0
.end method
