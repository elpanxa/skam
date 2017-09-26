.class Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CarouselRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/CarouselRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarouselItem"
.end annotation


# instance fields
.field carouselDots:Lcom/avocarrot/androidsdk/CarouselDots;

.field final synthetic this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;


# direct methods
.method public constructor <init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 107
    iput-object p1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    .line 108
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    const-string v0, "avo_carousel"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    const-string v1, "avo_carousel_container"

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 111
    new-instance v2, Lcom/avocarrot/androidsdk/CarouselDots;

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avocarrot/androidsdk/CarouselDots;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->carouselDots:Lcom/avocarrot/androidsdk/CarouselDots;

    .line 112
    iget-object v2, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->carouselDots:Lcom/avocarrot/androidsdk/CarouselDots;

    iget-object v2, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avocarrot/androidsdk/CarouselDots;->init(I)V

    .line 115
    iget-object v1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->carouselDots:Lcom/avocarrot/androidsdk/CarouselDots;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz v1, :cond_0

    .line 119
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
