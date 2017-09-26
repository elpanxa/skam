.class public Lat/markushi/ui/action/BackAction;
.super Lat/markushi/ui/action/Action;
.source "BackAction.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 5
    invoke-direct {p0}, Lat/markushi/ui/action/Action;-><init>()V

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lat/markushi/ui/action/BackAction;->lineData:[F

    .line 19
    iget-object v0, p0, Lat/markushi/ui/action/BackAction;->lineSegments:Ljava/util/List;

    new-instance v1, Lat/markushi/ui/action/LineSegment;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lat/markushi/ui/action/LineSegment;-><init>([I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lat/markushi/ui/action/BackAction;->lineSegments:Ljava/util/List;

    new-instance v1, Lat/markushi/ui/action/LineSegment;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-direct {v1, v2}, Lat/markushi/ui/action/LineSegment;-><init>([I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3e600000    # 0.21875f
        0x3f000000    # 0.5f
        0x3f051eb8    # 0.52f
        0x3e4ccccd    # 0.2f
        0x3e600000    # 0.21875f
        0x3f000000    # 0.5f
        0x3f51eb85    # 0.82f
        0x3f000000    # 0.5f
        0x3e600000    # 0.21875f
        0x3f000000    # 0.5f
        0x3f051eb8    # 0.52f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x0
        0x8
    .end array-data
.end method
