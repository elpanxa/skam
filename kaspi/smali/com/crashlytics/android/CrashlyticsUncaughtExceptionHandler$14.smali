.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$toSend:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->val$toSend:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/Crashlytics;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/settings/SettingsData;)Lcom/crashlytics/android/CreateReportSpiCall;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_0

    .line 1199
    new-instance v1, Lcom/crashlytics/android/ReportUploader;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/ReportUploader;-><init>(Lcom/crashlytics/android/CreateReportSpiCall;)V

    new-instance v0, Lcom/crashlytics/android/SessionReport;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->val$toSend:Ljava/io/File;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    invoke-static {}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1200()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/SessionReport;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ReportUploader;->forceUpload(Lcom/crashlytics/android/Report;)Z

    .line 1203
    :cond_0
    return-void
.end method
