.class public Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
.super Ljava/lang/Object;
.source "AnalyticsSettingsData.java"


# instance fields
.field public final analyticsURL:Ljava/lang/String;

.field public final flushIntervalSeconds:I

.field public final maxByteSizePerFile:I

.field public final maxFileCountPerSend:I

.field public final maxPendingSendFileCount:I

.field public final trackCustomEvents:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->analyticsURL:Ljava/lang/String;

    .line 18
    iput p2, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->flushIntervalSeconds:I

    .line 19
    iput p3, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxByteSizePerFile:I

    .line 20
    iput p4, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxFileCountPerSend:I

    .line 21
    iput p5, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxPendingSendFileCount:I

    .line 22
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->trackCustomEvents:Z

    .line 23
    return-void
.end method
