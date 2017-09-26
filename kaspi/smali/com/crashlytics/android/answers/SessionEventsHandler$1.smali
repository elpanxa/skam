.class Lcom/crashlytics/android/answers/SessionEventsHandler$1;
.super Ljava/lang/Object;
.source "SessionEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/SessionEventsHandler;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/SessionEventsHandler;

.field final synthetic val$analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

.field final synthetic val$protocolAndHostOverride:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionEventsHandler;Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->this$0:Lcom/crashlytics/android/answers/SessionEventsHandler;

    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->val$analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    iput-object p3, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->this$0:Lcom/crashlytics/android/answers/SessionEventsHandler;

    # getter for: Lcom/crashlytics/android/answers/SessionEventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;
    invoke-static {v0}, Lcom/crashlytics/android/answers/SessionEventsHandler;->access$000(Lcom/crashlytics/android/answers/SessionEventsHandler;)Lio/fabric/sdk/android/services/events/EventsStrategy;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;

    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->val$analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Crashlytics failed to set analytics settings data."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
