.class final Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$1;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    invoke-direct {v0, p1}, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
    .locals 1

    .prologue
    .line 302
    new-array v0, p1, [Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType$1;->newArray(I)[Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    move-result-object v0

    return-object v0
.end method
