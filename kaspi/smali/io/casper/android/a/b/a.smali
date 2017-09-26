.class public Lio/casper/android/a/b/a;
.super Ljava/lang/Object;
.source "AccountStatistic.java"


# instance fields
.field private resourceId:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lio/casper/android/a/b/a;->resourceId:I

    .line 10
    iput-object p2, p0, Lio/casper/android/a/b/a;->value:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lio/casper/android/a/b/a;->resourceId:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/a/b/a;->value:Ljava/lang/String;

    return-object v0
.end method
