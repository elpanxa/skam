.class final Lorg/altbeacon/beacon/Region$1;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/Region;
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
        "Lorg/altbeacon/beacon/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Region$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Region;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/Region;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/altbeacon/beacon/Region;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/Region;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/Region$1;->newArray(I)[Lorg/altbeacon/beacon/Region;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/altbeacon/beacon/Region;
    .locals 1

    .prologue
    .line 62
    new-array v0, p1, [Lorg/altbeacon/beacon/Region;

    return-object v0
.end method
