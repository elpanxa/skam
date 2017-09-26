.class public Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AvocarrotInstreamRecyclerView.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/CommonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$AdViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/avocarrot/androidsdk/CommonAdapter;"
    }
.end annotation


# static fields
.field private static final _handler:Landroid/os/Handler;


# instance fields
.field instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

.field userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->_handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    .line 23
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 25
    :try_start_0
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/avocarrot/androidsdk/CommonAdapter;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 37
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Failed to initialize AvocarrotInstreamRecyclerView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->clear()V

    .line 128
    return-void
.end method

.method public getAdItemViewType()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7fffffff

    return v0
.end method

.method public getCommonCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getCommonItemId(I)J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommonItemViewType(I)I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getPosition(I)I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->normalizePos(I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 50
    instance-of v0, p1, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$AdViewHolder;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->onBindViewWithModel(Landroid/view/View;I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->normalizePos(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCommonAdapterCountNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$2;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adItemViewType()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/InstreamView;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$AdViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$AdViewHolder;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;Landroid/view/View;)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->userAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public setFrequency(II)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->setFrequency(II)V

    .line 124
    return-void
.end method

.method public setLayout(IIIIIII)V
    .locals 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->setLayout(IIIIIII)V

    .line 140
    return-void
.end method

.method public setListener(Lcom/avocarrot/androidsdk/AvocarrotInstreamListener;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->setListener(Lcom/avocarrot/androidsdk/BaseListener;)V

    .line 136
    return-void
.end method

.method public setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setSandbox(Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->setSandbox(Z)V

    .line 120
    return-void
.end method
