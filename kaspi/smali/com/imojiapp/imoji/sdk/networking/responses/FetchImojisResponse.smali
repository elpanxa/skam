.class public Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "FetchImojisResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/imojiapp/imoji/sdk/Imoji;",
        ">;>;"
    }
.end annotation


# instance fields
.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;->getPayload()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;->results:Ljava/util/ArrayList;

    return-object v0
.end method
