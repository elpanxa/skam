.class public Lio/casper/android/c/b/b/a/b;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/casper/android/c/b/b/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private download:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/casper/android/c/b/b/a/b;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/c/b/b/a/b;->download:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/c/b/b/a/b;)I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/c/b/b/a/b;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/b/b/a/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/c/b/b/a/b;->download:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lio/casper/android/c/b/b/a/b;

    invoke-virtual {p0, p1}, Lio/casper/android/c/b/b/a/b;->a(Lio/casper/android/c/b/b/a/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lio/casper/android/c/b/b/a/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    check-cast p1, Lio/casper/android/c/b/b/a/b;

    .line 43
    invoke-virtual {p0}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/c/b/b/a/b;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
