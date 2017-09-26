.class public Lio/casper/android/camera/b;
.super Landroid/view/TextureView;
.source "CameraSurfaceTexture.java"


# instance fields
.field private mCenterPosX:I

.field private mCenterPosY:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lio/casper/android/camera/b;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method
