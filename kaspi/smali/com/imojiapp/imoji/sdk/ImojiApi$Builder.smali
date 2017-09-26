.class public Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;
.super Ljava/lang/Object;
.source "ImojiApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultNumResults:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/16 v0, 0x3c

    iput v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->mDefaultNumResults:I

    .line 199
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->mContext:Landroid/content/Context;

    .line 200
    return-void
.end method


# virtual methods
.method public build()Lcom/imojiapp/imoji/sdk/ImojiApi;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl;-><init>(Landroid/content/Context;)V

    .line 215
    iget v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->mDefaultNumResults:I

    iput v1, v0, Lcom/imojiapp/imoji/sdk/ImojiApi;->mDefaultNumResults:I

    .line 216
    return-object v0
.end method

.method public defaultResultCount(I)Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApi$Builder;->mDefaultNumResults:I

    .line 210
    return-object p0
.end method
