.class public Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "GetAuthTokenResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:J

.field public refresh_token:Ljava/lang/String;

.field public token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;
    .locals 0

    .prologue
    .line 14
    return-object p0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;->getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;

    move-result-object v0

    return-object v0
.end method
