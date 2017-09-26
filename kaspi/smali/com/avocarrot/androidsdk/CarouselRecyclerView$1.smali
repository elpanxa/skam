.class Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CarouselRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/CarouselRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 34
    if-nez p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget v1, v1, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->nextAd:I

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->smoothScrollToPosition(I)V

    .line 38
    :cond_0
    return-void
.end method
