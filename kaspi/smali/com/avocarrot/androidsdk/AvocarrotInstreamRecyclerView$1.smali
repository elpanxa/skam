.class Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "AvocarrotInstreamRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 33
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->notifyUserDataSetChanged()V

    .line 34
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
