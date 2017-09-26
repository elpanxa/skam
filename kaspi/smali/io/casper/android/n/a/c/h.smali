.class public Lio/casper/android/n/a/c/h;
.super Ljava/lang/Object;
.source "LocationDataResponse.java"


# instance fields
.field private location:Lio/casper/android/n/a/c/b/p;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/p;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lio/casper/android/n/a/c/h;->location:Lio/casper/android/n/a/c/b/p;

    return-object v0
.end method
