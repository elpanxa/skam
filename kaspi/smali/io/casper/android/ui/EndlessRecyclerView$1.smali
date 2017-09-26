.class Lio/casper/android/ui/EndlessRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "EndlessRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/ui/EndlessRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/EndlessRecyclerView;


# direct methods
.method constructor <init>(Lio/casper/android/ui/EndlessRecyclerView;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v1}, Lio/casper/android/ui/EndlessRecyclerView;->a(Lio/casper/android/ui/EndlessRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lio/casper/android/ui/EndlessRecyclerView;->a(Lio/casper/android/ui/EndlessRecyclerView;I)I

    .line 38
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v1}, Lio/casper/android/ui/EndlessRecyclerView;->a(Lio/casper/android/ui/EndlessRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lio/casper/android/ui/EndlessRecyclerView;->b(Lio/casper/android/ui/EndlessRecyclerView;I)I

    .line 39
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v1}, Lio/casper/android/ui/EndlessRecyclerView;->a(Lio/casper/android/ui/EndlessRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lio/casper/android/ui/EndlessRecyclerView;->c(Lio/casper/android/ui/EndlessRecyclerView;I)I

    .line 41
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v0}, Lio/casper/android/ui/EndlessRecyclerView;->b(Lio/casper/android/ui/EndlessRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v1}, Lio/casper/android/ui/EndlessRecyclerView;->c(Lio/casper/android/ui/EndlessRecyclerView;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v1}, Lio/casper/android/ui/EndlessRecyclerView;->d(Lio/casper/android/ui/EndlessRecyclerView;)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v0}, Lio/casper/android/ui/EndlessRecyclerView;->e(Lio/casper/android/ui/EndlessRecyclerView;)Lio/casper/android/ui/EndlessRecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lio/casper/android/ui/EndlessRecyclerView$1;->this$0:Lio/casper/android/ui/EndlessRecyclerView;

    invoke-static {v0}, Lio/casper/android/ui/EndlessRecyclerView;->e(Lio/casper/android/ui/EndlessRecyclerView;)Lio/casper/android/ui/EndlessRecyclerView$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/ui/EndlessRecyclerView$a;->a()V

    .line 48
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
