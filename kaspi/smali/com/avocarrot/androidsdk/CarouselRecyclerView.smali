.class public Lcom/avocarrot/androidsdk/CarouselRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "CarouselRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;,
        Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;
    }
.end annotation


# instance fields
.field dynamicLayout:Lorg/json/JSONObject;

.field dynamicViewIdClass:Ljava/lang/Class;

.field linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field listener:Lcom/avocarrot/androidsdk/CarouselListener;

.field models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field nextAd:I

.field scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;",
            "Lcom/avocarrot/androidsdk/CarouselListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->nextAd:I

    .line 29
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/CarouselRecyclerView$1;-><init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 45
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 48
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->setClipToPadding(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->setHasFixedSize(Z)V

    .line 53
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 54
    iput-object p2, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->dynamicViewIdClass:Ljava/lang/Class;

    .line 55
    iput-object p5, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->listener:Lcom/avocarrot/androidsdk/CarouselListener;

    .line 57
    iput-object p4, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->dynamicLayout:Lorg/json/JSONObject;

    .line 59
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;-><init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method


# virtual methods
.method public fling(II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    if-lez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->nextAd:I

    .line 70
    :goto_0
    invoke-super {p0, v1, v1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->nextAd:I

    goto :goto_0
.end method
