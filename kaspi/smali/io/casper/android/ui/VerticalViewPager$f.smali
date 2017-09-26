.class Lio/casper/android/ui/VerticalViewPager$f;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/VerticalViewPager;


# direct methods
.method private constructor <init>(Lio/casper/android/ui/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 2714
    iput-object p1, p0, Lio/casper/android/ui/VerticalViewPager$f;->this$0:Lio/casper/android/ui/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/casper/android/ui/VerticalViewPager;Lio/casper/android/ui/VerticalViewPager$1;)V
    .locals 0

    .prologue
    .line 2714
    invoke-direct {p0, p1}, Lio/casper/android/ui/VerticalViewPager$f;-><init>(Lio/casper/android/ui/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lio/casper/android/ui/VerticalViewPager$f;->this$0:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0}, Lio/casper/android/ui/VerticalViewPager;->b()V

    .line 2718
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lio/casper/android/ui/VerticalViewPager$f;->this$0:Lio/casper/android/ui/VerticalViewPager;

    invoke-virtual {v0}, Lio/casper/android/ui/VerticalViewPager;->b()V

    .line 2723
    return-void
.end method
