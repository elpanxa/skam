.class public Lcom/imojiapp/imoji/sdk/networking/responses/GetCategoryResponse;
.super Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.source "GetCategoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/networking/responses/GetCategoryResponse;->getPayload()Ljava/util/List;

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
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/networking/responses/GetCategoryResponse;->categories:Ljava/util/List;

    return-object v0
.end method
