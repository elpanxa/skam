.class public Lio/casper/android/ui/EndlessGridView;
.super Landroid/widget/GridView;
.source "EndlessGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/EndlessGridView$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScrollCallback:Lio/casper/android/ui/EndlessGridView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/EndlessGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lio/casper/android/ui/EndlessGridView;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lio/casper/android/ui/EndlessGridView$1;

    invoke-direct {v0, p0}, Lio/casper/android/ui/EndlessGridView$1;-><init>(Lio/casper/android/ui/EndlessGridView;)V

    invoke-virtual {p0, v0}, Lio/casper/android/ui/EndlessGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/EndlessGridView;)Lio/casper/android/ui/EndlessGridView$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lio/casper/android/ui/EndlessGridView;->mScrollCallback:Lio/casper/android/ui/EndlessGridView$a;

    return-object v0
.end method


# virtual methods
.method public setScrollCallback(Lio/casper/android/ui/EndlessGridView$a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lio/casper/android/ui/EndlessGridView;->mScrollCallback:Lio/casper/android/ui/EndlessGridView$a;

    .line 36
    return-void
.end method
