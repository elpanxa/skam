.class Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$2;
.super Ljava/lang/Object;
.source "AvocarrotInstreamRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->onCommonAdapterCountNotifyDataSetChanged()V
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
    .line 81
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$2;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView$2;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamRecyclerView;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
