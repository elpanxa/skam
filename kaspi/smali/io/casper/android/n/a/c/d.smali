.class public Lio/casper/android/n/a/c/d;
.super Ljava/lang/Object;
.source "ConversationsResponse.java"


# instance fields
.field private conversations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversations_response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private friendsResponse:Lio/casper/android/n/a/c/g;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends_response"
    .end annotation
.end field

.field private messagingGatewayInfo:Lio/casper/android/n/a/c/b/s;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messaging_gateway_info"
    .end annotation
.end field

.field private serverInfo:Lio/casper/android/n/a/c/b/v;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_info"
    .end annotation
.end field

.field private updatesResponse:Lio/casper/android/n/a/c/k;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates_response"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/k;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/n/a/c/d;->updatesResponse:Lio/casper/android/n/a/c/k;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/g;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/n/a/c/d;->friendsResponse:Lio/casper/android/n/a/c/g;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/n/a/c/d;->conversations:Ljava/util/List;

    return-object v0
.end method

.method public d()Lio/casper/android/n/a/c/b/s;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/n/a/c/d;->messagingGatewayInfo:Lio/casper/android/n/a/c/b/s;

    return-object v0
.end method
