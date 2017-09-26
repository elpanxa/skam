.class Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CarouselRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/CarouselRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarouselAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;

    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->onBindViewHolder(Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;I)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->itemView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    invoke-virtual {v3}, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->carouselDots:Lcom/avocarrot/androidsdk/CarouselDots;

    invoke-virtual {v0, p2}, Lcom/avocarrot/androidsdk/CarouselDots;->setPosition(I)V

    .line 86
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->listener:Lcom/avocarrot/androidsdk/CarouselListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v1, v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->listener:Lcom/avocarrot/androidsdk/CarouselListener;

    iget-object v2, p1, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    iget-object v3, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v3, v3, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->models:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v0, p2, v3}, Lcom/avocarrot/androidsdk/CarouselListener;->onCarouselBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;II)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Could not bind listener to Carousel view"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v3, v3, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->dynamicLayout:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselAdapter;->this$0:Lcom/avocarrot/androidsdk/CarouselRecyclerView;

    iget-object v4, v4, Lcom/avocarrot/androidsdk/CarouselRecyclerView;->dynamicViewIdClass:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/avocarrot/json2view/DynamicView;->createView(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/androidsdk/CarouselRecyclerView$CarouselItem;-><init>(Lcom/avocarrot/androidsdk/CarouselRecyclerView;Landroid/view/View;)V

    return-object v0
.end method
