.class public Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;
.super Landroid/os/AsyncTask;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mHeight:I

.field private volatile mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    iput p1, p0, Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;->mWidth:I

    .line 158
    iput p2, p0, Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;->mHeight:I

    .line 159
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    aget-object v0, p1, v3

    iget v1, p0, Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;->mWidth:I

    iget v2, p0, Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/BitmapUtils$ResizeTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
