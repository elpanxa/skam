.class public Lat/markushi/ui/action/CloseAction;
.super Lat/markushi/ui/action/Action;
.source "CloseAction.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lat/markushi/ui/action/Action;-><init>()V

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lat/markushi/ui/action/CloseAction;->lineData:[F

    .line 16
    return-void

    .line 9
    nop

    :array_0
    .array-data 4
        0x3e751eb8
        0x3e751eb8
        0x3f42b852
        0x3f42b852
        0x3e751eb8
        0x3f42b852
        0x3f42b852
        0x3e751eb8
        0x3e751eb8
        0x3e751eb8
        0x3f42b852
        0x3f42b852
    .end array-data
.end method
