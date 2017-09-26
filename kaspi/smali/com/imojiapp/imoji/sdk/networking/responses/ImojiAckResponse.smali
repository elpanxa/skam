.class public Lcom/imojiapp/imoji/sdk/networking/responses/ImojiAckResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "ImojiAckResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/ImojiAckResponse;->getPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/networking/responses/ImojiAckResponse;->status:Ljava/lang/String;

    return-object v0
.end method
