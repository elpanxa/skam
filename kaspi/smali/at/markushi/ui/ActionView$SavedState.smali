.class Lat/markushi/ui/ActionView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/markushi/ui/ActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lat/markushi/ui/ActionView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field color:I

.field currentAction:Lat/markushi/ui/action/Action;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lat/markushi/ui/ActionView$SavedState$1;

    invoke-direct {v0}, Lat/markushi/ui/ActionView$SavedState$1;-><init>()V

    sput-object v0, Lat/markushi/ui/ActionView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lat/markushi/ui/action/Action;

    iput-object v0, p0, Lat/markushi/ui/ActionView$SavedState;->currentAction:Lat/markushi/ui/action/Action;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lat/markushi/ui/ActionView$SavedState;->color:I

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 355
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 366
    iget-object v0, p0, Lat/markushi/ui/ActionView$SavedState;->currentAction:Lat/markushi/ui/action/Action;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 367
    iget v0, p0, Lat/markushi/ui/ActionView$SavedState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return-void
.end method
