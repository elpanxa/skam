.class Lcom/imojiapp/imoji/sdk/ImojiUploadTask;
.super Landroid/os/AsyncTask;
.source "ImojiUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/imojiapp/imoji/sdk/Imoji;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mApiHandle:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadListener:Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;Landroid/graphics/Bitmap;Ljava/util/List;Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mApiHandle:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    .line 32
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p3, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mTags:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mUploadListener:Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;

    .line 36
    return-void
.end method

.method private prepareImageDataForUpload(Landroid/graphics/Bitmap;II)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p2, p3, v3}, Lcom/imojiapp/imoji/sdk/BitmapUtils;->getSizeWithinBounds(IIIIZ)[I

    move-result-object v0

    .line 84
    aget v1, v0, v3

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p1, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    .line 90
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 93
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private upload(Ljava/lang/String;[B)Z
    .locals 3

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "Content-Type"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {v1, p2, v0}, Lcom/imojiapp/imoji/sdk/NetworkUtils;->putObject(Ljava/net/URL;[BLjava/util/Map;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/imojiapp/imoji/sdk/Imoji;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mApiHandle:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mTags:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->createImoji(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mBitmap:Landroid/graphics/Bitmap;

    iget v3, v1, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->fullImageResizeWidth:I

    iget v4, v1, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->fullImageResizeHeight:I

    invoke-direct {p0, v2, v3, v4}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->prepareImageDataForUpload(Landroid/graphics/Bitmap;II)[B

    move-result-object v2

    .line 51
    iget-object v3, v1, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->fullImageUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->upload(Ljava/lang/String;[B)Z

    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mApiHandle:Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v1, v1, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;->imojiId:Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;->getImojisById(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;->getPayload()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;->getPayload()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->doInBackground([Ljava/lang/Void;)Lcom/imojiapp/imoji/sdk/Imoji;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/imojiapp/imoji/sdk/Imoji;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mUploadListener:Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->mUploadListener:Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;

    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask$OnImojiUploadCompleteListener;->onImojiUploadComplete(Lcom/imojiapp/imoji/sdk/Imoji;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/ImojiUploadTask;->onPostExecute(Lcom/imojiapp/imoji/sdk/Imoji;)V

    return-void
.end method
