.class public Lio/fabric/sdk/android/services/settings/AppSettingsData;
.super Ljava/lang/Object;
.source "AppSettingsData.java"


# static fields
.field public static final STATUS_ACTIVATED:Ljava/lang/String; = "activated"

.field public static final STATUS_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final STATUS_NEW:Ljava/lang/String; = "new"


# instance fields
.field public final icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

.field public final identifier:Ljava/lang/String;

.field public final reportsUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final updateRequired:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->identifier:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->updateRequired:Z

    .line 27
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    .line 28
    return-void
.end method
