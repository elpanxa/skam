.class public Lorg/altbeacon/beacon/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Region"


# instance fields
.field protected final mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/altbeacon/beacon/Region$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Region$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 215
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iput-object p1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Region;->clone()Lorg/altbeacon/beacon/Region;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/altbeacon/beacon/Region;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lorg/altbeacon/beacon/Region;

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v2, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 170
    instance-of v0, p1, Lorg/altbeacon/beacon/Region;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lorg/altbeacon/beacon/Region;

    iget-object v0, p1, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    iget-object v1, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId1()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId2()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getId3()Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/Region;->getIdentifier(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 149
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 150
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    iget-object v3, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/altbeacon/beacon/Identifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 180
    if-le v1, v2, :cond_0

    .line 181
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 188
    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lorg/altbeacon/beacon/Region;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method
