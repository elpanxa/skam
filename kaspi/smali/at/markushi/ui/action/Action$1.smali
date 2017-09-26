.class final Lat/markushi/ui/action/Action$1;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/markushi/ui/action/Action;
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
        "Lat/markushi/ui/action/Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lat/markushi/ui/action/Action;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lat/markushi/ui/action/Action;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lat/markushi/ui/action/Action;-><init>(Landroid/os/Parcel;Lat/markushi/ui/action/Action$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lat/markushi/ui/action/Action$1;->createFromParcel(Landroid/os/Parcel;)Lat/markushi/ui/action/Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lat/markushi/ui/action/Action;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lat/markushi/ui/action/Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lat/markushi/ui/action/Action$1;->newArray(I)[Lat/markushi/ui/action/Action;

    move-result-object v0

    return-object v0
.end method
