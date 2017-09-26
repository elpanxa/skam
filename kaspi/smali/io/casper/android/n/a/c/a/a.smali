.class public Lio/casper/android/n/a/c/a/a;
.super Ljava/lang/Object;
.source "SnapchatResponse.java"


# instance fields
.field private logged:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logged"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/n/a/c/a/a;->message:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lio/casper/android/n/a/c/a/a;->status:I

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lio/casper/android/n/a/c/a/a;->logged:Z

    return v0
.end method
