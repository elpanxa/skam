.class Lcom/crashlytics/android/answers/SessionEventsHandler;
.super Lio/fabric/sdk/android/services/events/EventsHandler;
.source "SessionEventsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/events/EventsHandler",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/events/EventsStrategy",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent;",
            ">;",
            "Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lio/fabric/sdk/android/services/events/EventsHandler;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lio/fabric/sdk/android/services/events/EventsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/answers/SessionEventsHandler;)Lio/fabric/sdk/android/services/events/EventsStrategy;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionEventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    return-object v0
.end method


# virtual methods
.method protected getDisabledEventsStrategy()Lio/fabric/sdk/android/services/events/EventsStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/events/EventsStrategy",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;-><init>()V

    return-object v0
.end method

.method protected setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/crashlytics/android/answers/SessionEventsHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/answers/SessionEventsHandler$1;-><init>(Lcom/crashlytics/android/answers/SessionEventsHandler;Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
