.class public Lcom/imojiapp/imoji/sdk/ImojiCategory;
.super Ljava/lang/Object;
.source "ImojiCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/ImojiCategory$Classification;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

.field private imojiId:Ljava/lang/String;

.field private mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

.field private searchText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/imojiapp/imoji/sdk/ImojiCategory$1;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/ImojiCategory$1;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->imojiId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->title:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->searchText:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/imojiapp/imoji/sdk/Imoji$Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/Imoji$Image;

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getImoji()Lcom/imojiapp/imoji/sdk/Imoji;
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/imojiapp/imoji/sdk/Imoji;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->imojiId:Ljava/lang/String;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->searchText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/imojiapp/imoji/sdk/Imoji;-><init>(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Imoji$Image;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->mImoji:Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->imojiId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiCategory;->images:Lcom/imojiapp/imoji/sdk/Imoji$Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
