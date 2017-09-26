.class public Lat/markushi/ui/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_SIZE:I = 0xc

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lat/markushi/ui/action/Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected lineData:[F

.field protected lineSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lat/markushi/ui/action/LineSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected size:F

.field protected transformed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lat/markushi/ui/action/Action$1;

    invoke-direct {v0}, Lat/markushi/ui/action/Action$1;-><init>()V

    sput-object v0, Lat/markushi/ui/action/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/markushi/ui/action/Action;->transformed:Z

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lat/markushi/ui/action/Action;->size:F

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/markushi/ui/action/Action;->transformed:Z

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lat/markushi/ui/action/Action;->size:F

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    .line 92
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    sget-object v1, Lat/markushi/ui/action/LineSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lat/markushi/ui/action/Action$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lat/markushi/ui/action/Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([FLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List",
            "<",
            "Lat/markushi/ui/action/LineSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/markushi/ui/action/Action;->transformed:Z

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lat/markushi/ui/action/Action;->size:F

    .line 29
    iput-object p1, p0, Lat/markushi/ui/action/Action;->lineData:[F

    .line 30
    if-eqz p2, :cond_0

    .line 31
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public flipHorizontally()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    move v0, v1

    :goto_0
    iget-object v2, p0, Lat/markushi/ui/action/Action;->lineData:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 49
    iget-object v2, p0, Lat/markushi/ui/action/Action;->lineData:[F

    iget v3, p0, Lat/markushi/ui/action/Action;->size:F

    iget-object v4, p0, Lat/markushi/ui/action/Action;->lineData:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 54
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    aget v0, v0, v1

    .line 55
    iget-object v2, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    .line 56
    iget-object v3, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v4, v1, 0x0

    iget-object v5, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 57
    iget-object v3, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v6, v1, 0x3

    aget v5, v5, v6

    aput v5, v3, v4

    .line 58
    iget-object v3, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v4, v1, 0x2

    aput v0, v3, v4

    .line 59
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    add-int/lit8 v3, v1, 0x3

    aput v2, v0, v3

    .line 53
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method

.method public getLineData()[F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    return-object v0
.end method

.method public getLineSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lat/markushi/ui/action/LineSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    return-object v0
.end method

.method public isTransformed()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lat/markushi/ui/action/Action;->transformed:Z

    return v0
.end method

.method public setLineSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lat/markushi/ui/action/LineSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    .line 73
    return-void
.end method

.method public transform(FFFF)V
    .locals 2

    .prologue
    .line 37
    iput p4, p0, Lat/markushi/ui/action/Action;->size:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/markushi/ui/action/Action;->transformed:Z

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 41
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    iget-object v1, p0, Lat/markushi/ui/action/Action;->lineData:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineData:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 87
    iget-object v0, p0, Lat/markushi/ui/action/Action;->lineSegments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    return-void
.end method
