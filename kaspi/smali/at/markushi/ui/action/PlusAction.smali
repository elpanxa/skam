.class public Lat/markushi/ui/action/PlusAction;
.super Lat/markushi/ui/action/Action;
.source "PlusAction.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lat/markushi/ui/action/Action;-><init>()V

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lat/markushi/ui/action/PlusAction;->lineData:[F

    .line 20
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e555554
        0x3f000000    # 0.5f
        0x3f4aaaab
        0x3e555555
        0x3f000000    # 0.5f
        0x3f4aaaab
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e555554
        0x3f000000    # 0.5f
        0x3f4aaaab
    .end array-data
.end method
