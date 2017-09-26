.class public Lat/markushi/ui/action/LineSegment;
.super Ljava/lang/Object;
.source "LineSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lat/markushi/ui/action/LineSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public indexes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lat/markushi/ui/action/LineSegment$1;

    invoke-direct {v0}, Lat/markushi/ui/action/LineSegment$1;-><init>()V

    sput-object v0, Lat/markushi/ui/action/LineSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lat/markushi/ui/action/LineSegment;->indexes:[I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lat/markushi/ui/action/LineSegment$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lat/markushi/ui/action/LineSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lat/markushi/ui/action/LineSegment;->indexes:[I

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getStartIdx()I
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lat/markushi/ui/action/LineSegment;->indexes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lat/markushi/ui/action/LineSegment;->indexes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 29
    return-void
.end method
