.class final Lio/casper/android/ui/VerticalViewPager$1;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lio/casper/android/ui/VerticalViewPager$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/ui/VerticalViewPager$b;Lio/casper/android/ui/VerticalViewPager$b;)I
    .locals 2

    .prologue
    .line 90
    iget v0, p1, Lio/casper/android/ui/VerticalViewPager$b;->position:I

    iget v1, p2, Lio/casper/android/ui/VerticalViewPager$b;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lio/casper/android/ui/VerticalViewPager$b;

    check-cast p2, Lio/casper/android/ui/VerticalViewPager$b;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/ui/VerticalViewPager$1;->a(Lio/casper/android/ui/VerticalViewPager$b;Lio/casper/android/ui/VerticalViewPager$b;)I

    move-result v0

    return v0
.end method
