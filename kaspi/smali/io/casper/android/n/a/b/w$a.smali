.class public Lio/casper/android/n/a/b/w$a;
.super Ljava/lang/Object;
.source "UpdateSnapsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/a/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mReplayed:Z

.field private mScreenshot:Z

.field private mSnap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method public constructor <init>(Lio/casper/android/n/a/c/b/w;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/casper/android/n/a/b/w$a;->mSnap:Lio/casper/android/n/a/c/b/w;

    .line 113
    return-void
.end method


# virtual methods
.method public a(Z)Lio/casper/android/n/a/b/w$a;
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lio/casper/android/n/a/b/w$a;->mReplayed:Z

    .line 134
    return-object p0
.end method

.method public a()Lio/casper/android/n/a/c/b/w;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/casper/android/n/a/b/w$a;->mSnap:Lio/casper/android/n/a/c/b/w;

    return-object v0
.end method

.method public b(Z)Lio/casper/android/n/a/b/w$a;
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lio/casper/android/n/a/b/w$a;->mScreenshot:Z

    .line 139
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lio/casper/android/n/a/b/w$a;->mReplayed:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lio/casper/android/n/a/b/w$a;->mScreenshot:Z

    return v0
.end method
