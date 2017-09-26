.class public abstract Lio/casper/android/ui/e;
.super Ljava/lang/Object;
.source "EndlessScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentPage:I

.field private loading:Z

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x5

    iput v0, p0, Lio/casper/android/ui/e;->visibleThreshold:I

    .line 11
    iput v1, p0, Lio/casper/android/ui/e;->currentPage:I

    .line 14
    iput v1, p0, Lio/casper/android/ui/e;->previousTotalItemCount:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    .line 20
    iput v1, p0, Lio/casper/android/ui/e;->startingPageIndex:I

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(II)Z
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lio/casper/android/ui/e;->previousTotalItemCount:I

    if-ge p4, v0, :cond_0

    .line 46
    iget v0, p0, Lio/casper/android/ui/e;->startingPageIndex:I

    iput v0, p0, Lio/casper/android/ui/e;->currentPage:I

    .line 47
    iput p4, p0, Lio/casper/android/ui/e;->previousTotalItemCount:I

    .line 49
    if-nez p4, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    .line 58
    :cond_0
    iget-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/casper/android/ui/e;->previousTotalItemCount:I

    if-le p4, v0, :cond_1

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    .line 60
    iput p4, p0, Lio/casper/android/ui/e;->previousTotalItemCount:I

    .line 61
    iget v0, p0, Lio/casper/android/ui/e;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/casper/android/ui/e;->currentPage:I

    .line 67
    :cond_1
    iget-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    if-nez v0, :cond_2

    sub-int v0, p4, p3

    iget v1, p0, Lio/casper/android/ui/e;->visibleThreshold:I

    add-int/2addr v1, p2

    if-gt v0, v1, :cond_2

    .line 68
    iget v0, p0, Lio/casper/android/ui/e;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p4}, Lio/casper/android/ui/e;->a(II)Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/ui/e;->loading:Z

    .line 71
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
