.class Lio/casper/android/h/a$b;
.super Ljava/lang/Object;
.source "AccountSelectorDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lio/casper/android/e/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/casper/android/h/a$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lio/casper/android/h/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/e/b/b;Lio/casper/android/e/b/b;)I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 77
    check-cast p1, Lio/casper/android/e/b/b;

    check-cast p2, Lio/casper/android/e/b/b;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/h/a$b;->a(Lio/casper/android/e/b/b;Lio/casper/android/e/b/b;)I

    move-result v0

    return v0
.end method
