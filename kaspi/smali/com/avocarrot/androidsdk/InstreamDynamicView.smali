.class Lcom/avocarrot/androidsdk/InstreamDynamicView;
.super Lcom/avocarrot/androidsdk/InstreamView;
.source "InstreamView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;
    }
.end annotation


# instance fields
.field jsonView:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/avocarrot/androidsdk/InstreamView;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;)V

    .line 50
    iput-object p2, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->jsonView:Lorg/json/JSONObject;

    .line 51
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->jsonView:Lorg/json/JSONObject;

    .line 126
    return-void
.end method

.method onBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)Landroid/view/View;
    .locals 4

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;

    .line 80
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->description:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->ctaBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->ctaBtn:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getCTAText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    new-instance v1, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/avocarrot/androidsdk/InstreamDynamicView$1;-><init>(Lcom/avocarrot/androidsdk/InstreamDynamicView;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 96
    :cond_3
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 100
    :cond_4
    iget-object v1, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->rating:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 101
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avocarrot/androidsdk/InstreamDynamicView$2;

    invoke-direct {v3, p0, v0}, Lcom/avocarrot/androidsdk/InstreamDynamicView$2;-><init>(Lcom/avocarrot/androidsdk/InstreamDynamicView;Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->avocarrotInstreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;->ids:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getExtra()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->connectExtraFieldsToView(Landroid/view/View;Ljava/util/HashMap;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object p1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "DynamicView | Could not bind view"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/InstreamDynamicView;->jsonView:Lorg/json/JSONObject;

    const-class v2, Lcom/avocarrot/androidsdk/InstreamDynamicView$InstreamViewHolder;

    invoke-static {v0, v1, p1, v2}, Lcom/avocarrot/json2view/DynamicView;->createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "DynamicView | Could not create view"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    :cond_0
    return-object v0
.end method
