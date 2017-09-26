.class public Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "CreateImojiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public fullImageResizeHeight:I

.field public fullImageResizeWidth:I

.field public fullImageUrl:Ljava/lang/String;

.field public imojiId:Ljava/lang/String;

.field public originalImageUrl:Ljava/lang/String;

.field public resizeHeight:I

.field public resizeWidth:I

.field public thumbImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;
    .locals 0

    .prologue
    .line 20
    return-object p0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->getPayload()Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;

    move-result-object v0

    return-object v0
.end method
