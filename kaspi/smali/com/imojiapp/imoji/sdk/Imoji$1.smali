.class final Lcom/imojiapp/imoji/sdk/Imoji$1;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji;
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
        "Lcom/imojiapp/imoji/sdk/Imoji;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/imojiapp/imoji/sdk/Imoji;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-direct {v0, p1}, Lcom/imojiapp/imoji/sdk/Imoji;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/Imoji$1;->createFromParcel(Landroid/os/Parcel;)Lcom/imojiapp/imoji/sdk/Imoji;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/imojiapp/imoji/sdk/Imoji;
    .locals 1

    .prologue
    .line 98
    new-array v0, p1, [Lcom/imojiapp/imoji/sdk/Imoji;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/imojiapp/imoji/sdk/Imoji$1;->newArray(I)[Lcom/imojiapp/imoji/sdk/Imoji;

    move-result-object v0

    return-object v0
.end method
