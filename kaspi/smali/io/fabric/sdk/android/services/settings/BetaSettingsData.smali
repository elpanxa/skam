.class public Lio/fabric/sdk/android/services/settings/BetaSettingsData;
.super Ljava/lang/Object;
.source "BetaSettingsData.java"


# instance fields
.field public final updateSuspendDurationSeconds:I

.field public final updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/BetaSettingsData;->updateUrl:Ljava/lang/String;

    .line 9
    iput p2, p0, Lio/fabric/sdk/android/services/settings/BetaSettingsData;->updateSuspendDurationSeconds:I

    .line 10
    return-void
.end method
