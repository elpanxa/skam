.class public Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;
.super Ljava/lang/Object;
.source "BackgroundPowerSaver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPowerSaver"


# instance fields
.field private activeActivityCount:I

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;-><init>(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 33
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "BackgroundPowerSaver requires SDK 18 or higher."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 37
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 42
    :goto_1
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "Context is not an application instance, so we cannot use the BackgroundPowerSaver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 77
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "activity paused: %s active activities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-ge v0, v4, :cond_0

    .line 79
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "setting background mode"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, v4}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 66
    iget v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    if-ge v0, v4, :cond_0

    .line 67
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "reset active activity count on resume.  It was %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput v4, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, v5}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 71
    const-string v0, "BackgroundPowerSaver"

    const-string v1, "activity resumed: %s active activities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget v3, p0, Lorg/altbeacon/beacon/powersave/BackgroundPowerSaver;->activeActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
