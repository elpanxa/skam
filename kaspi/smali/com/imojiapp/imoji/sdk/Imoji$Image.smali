.class Lcom/imojiapp/imoji/sdk/Imoji$Image;
.super Ljava/lang/Object;
.source "Imoji.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/Imoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji$Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field png:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

.field webp:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$1;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/Imoji$Image$1;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/Imoji$Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image;->png:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    .line 309
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image;->webp:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    .line 310
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image;->png:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 315
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/Imoji$Image;->webp:Lcom/imojiapp/imoji/sdk/Imoji$Image$ImageType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 316
    return-void
.end method
