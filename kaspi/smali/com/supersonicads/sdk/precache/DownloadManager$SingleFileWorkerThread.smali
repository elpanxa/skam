.class Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleFileWorkerThread"
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mFile:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/supersonicads/sdk/precache/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/supersonicads/sdk/precache/DownloadManager;Lcom/supersonicads/sdk/data/SSAFile;)V
    .locals 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 158
    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    .line 161
    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;
    invoke-static {p1}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$000(Lcom/supersonicads/sdk/precache/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getConnectionRetries()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/16 v13, 0x3f9

    .line 169
    new-instance v10, Lcom/supersonicads/sdk/data/SSAFile;

    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct {v10, v0, v1}, Lcom/supersonicads/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 172
    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    iput v13, v11, Landroid/os/Message;->what:I

    .line 177
    const-string v0, "unable_to_create_folder"

    invoke-virtual {v10, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 183
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, v12}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 185
    new-instance v1, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;

    iget-object v2, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    iget-object v3, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    iget-object v8, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/supersonicads/sdk/precache/DownloadManager$FileWorkerThread;-><init>(Lcom/supersonicads/sdk/precache/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 197
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 210
    :goto_1
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 213
    const-wide v2, 0x7fffffffffffffffL

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    :goto_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 256
    :sswitch_0
    const-string v0, "http ok"

    .line 258
    const/16 v0, 0x3f8

    iput v0, v11, Landroid/os/Message;->what:I

    .line 259
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    move v0, v9

    .line 208
    goto :goto_1

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v9

    .line 208
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    throw v0

    .line 221
    :sswitch_1
    const-string v0, "malformed url exception"

    .line 224
    :sswitch_2
    const-string v0, "http not found"

    .line 226
    :sswitch_3
    const-string v0, "http empty response"

    .line 228
    :sswitch_4
    const-string v0, "uri syntax exception"

    .line 230
    :sswitch_5
    const-string v0, "http error code"

    .line 232
    :sswitch_6
    const-string v0, "file not found exception"

    .line 234
    iput v13, v11, Landroid/os/Message;->what:I

    .line 235
    invoke-virtual {v10, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 243
    :sswitch_7
    const-string v0, "socket timeout exception"

    .line 245
    :sswitch_8
    const-string v0, "io exception"

    .line 247
    iput v13, v11, Landroid/os/Message;->what:I

    .line 248
    invoke-virtual {v10, v0}, Lcom/supersonicads/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/supersonicads/sdk/precache/DownloadManager$SingleFileWorkerThread;->this$0:Lcom/supersonicads/sdk/precache/DownloadManager;

    # getter for: Lcom/supersonicads/sdk/precache/DownloadManager;->downloadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/supersonicads/sdk/precache/DownloadManager;->access$100(Lcom/supersonicads/sdk/precache/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    .line 214
    :catch_2
    move-exception v1

    goto :goto_2

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_3
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3fa -> :sswitch_6
    .end sparse-switch
.end method
