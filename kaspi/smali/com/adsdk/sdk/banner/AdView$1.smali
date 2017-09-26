.class Lcom/adsdk/sdk/banner/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/banner/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->showContent()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$0(Lcom/adsdk/sdk/banner/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/adsdk/sdk/banner/AdView;->access$1(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
