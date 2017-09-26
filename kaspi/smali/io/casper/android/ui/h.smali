.class public abstract Lio/casper/android/ui/h;
.super Ljava/lang/Object;
.source "OldEndlessScrollListener.java"

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lio/casper/android/ui/h;->visibleThreshold:I

    .line 11
    iput v1, p0, Lio/casper/android/ui/h;->currentPage:I

    .line 13
    iput v1, p0, Lio/casper/android/ui/h;->previousTotalItemCount:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/h;->loading:Z

    .line 17
    iput v1, p0, Lio/casper/android/ui/h;->startingPageIndex:I

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a(II)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    iget v0, p0, Lio/casper/android/ui/h;->previousTotalItemCount:I

    if-ge p4, v0, :cond_0

    .line 41
    iget v0, p0, Lio/casper/android/ui/h;->startingPageIndex:I

    iput v0, p0, Lio/casper/android/ui/h;->currentPage:I

    .line 42
    iput p4, p0, Lio/casper/android/ui/h;->previousTotalItemCount:I

    .line 43
    if-nez p4, :cond_0

    iput-boolean v2, p0, Lio/casper/android/ui/h;->loading:Z

    .line 48
    :cond_0
    iget-boolean v0, p0, Lio/casper/android/ui/h;->loading:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/casper/android/ui/h;->previousTotalItemCount:I

    if-le p4, v0, :cond_1

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/h;->loading:Z

    .line 50
    iput p4, p0, Lio/casper/android/ui/h;->previousTotalItemCount:I

    .line 51
    iget v0, p0, Lio/casper/android/ui/h;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/casper/android/ui/h;->currentPage:I

    .line 57
    :cond_1
    iget-boolean v0, p0, Lio/casper/android/ui/h;->loading:Z

    if-nez v0, :cond_2

    sub-int v0, p4, p3

    iget v1, p0, Lio/casper/android/ui/h;->visibleThreshold:I

    add-int/2addr v1, p2

    if-gt v0, v1, :cond_2

    .line 58
    iget v0, p0, Lio/casper/android/ui/h;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p4}, Lio/casper/android/ui/h;->a(II)V

    .line 59
    iput-boolean v2, p0, Lio/casper/android/ui/h;->loading:Z

    .line 61
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
