.class Lcom/supersonicads/sdk/precache/DownloadManager$1;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/precache/DownloadManager;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/precache/DownloadManager;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$1;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 447
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 468
    :pswitch_1
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$1;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$1;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/supersonicads/sdk/data/SSAFile;)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$1;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$1;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->mListener:Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$200(Lcom/supersonicads/sdk/precache/DownloadManager;)Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/supersonicads/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadFail(Lcom/supersonicads/sdk/data/SSAFile;)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x3f4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
