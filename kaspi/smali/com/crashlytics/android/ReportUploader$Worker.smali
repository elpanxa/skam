.class Lcom/crashlytics/android/ReportUploader$Worker;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final delay:F

.field final synthetic this$0:Lcom/crashlytics/android/ReportUploader;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/ReportUploader;F)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    .line 124
    iput p2, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    .line 125
    return-void
.end method

.method private attemptUploadWithRetry()V
    .locals 9

    .prologue
    .line 140
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting report processing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 145
    :try_start_0
    iget v0, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getHandler()Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    move-result-object v2

    .line 154
    iget-object v1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v1}, Lcom/crashlytics/android/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-virtual {v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->canSendWithUserApproval()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User declined to send. Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Report;

    .line 166
    invoke-interface {v0}, Lcom/crashlytics/android/Report;->remove()Z

    goto :goto_1

    .line 171
    :cond_3
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 172
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->getHandler()Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Report;

    .line 189
    iget-object v3, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/ReportUploader;->forceUpload(Lcom/crashlytics/android/Report;)Z

    goto :goto_3

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v0}, Lcom/crashlytics/android/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    # getter for: Lcom/crashlytics/android/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/crashlytics/android/ReportUploader;->access$100()[S

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    # getter for: Lcom/crashlytics/android/ReportUploader;->RETRY_INTERVALS:[S
    invoke-static {}, Lcom/crashlytics/android/ReportUploader;->access$100()[S

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v3, v1

    int-to-long v4, v1

    .line 197
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v3, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    move-object v0, v2

    .line 206
    goto/16 :goto_2

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public onRun()V
    .locals 4

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/ReportUploader$Worker;->attemptUploadWithRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    const/4 v1, 0x0

    # setter for: Lcom/crashlytics/android/ReportUploader;->uploadThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/crashlytics/android/ReportUploader;->access$002(Lcom/crashlytics/android/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 137
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
