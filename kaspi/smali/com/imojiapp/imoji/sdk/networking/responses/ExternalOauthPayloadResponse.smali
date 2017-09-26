.class public Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "ExternalOauthPayloadResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public base64Key:Ljava/lang/String;

.field public payload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;
    .locals 0

    .prologue
    .line 13
    return-object p0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;->getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;

    move-result-object v0

    return-object v0
.end method
