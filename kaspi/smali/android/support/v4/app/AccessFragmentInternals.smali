.class public final Landroid/support/v4/app/AccessFragmentInternals;
.super Ljava/lang/Object;
.source "AccessFragmentInternals.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getContainerId(Landroid/support/v4/app/Fragment;)I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    return v0
.end method
