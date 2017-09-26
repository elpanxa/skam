.class public Lorg/altbeacon/beacon/service/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Callback"


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "org.altbeacon.beacon.BeaconIntentProcessor"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "Callback"

    const-string v3, "attempting callback via intent: %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    .line 47
    return-void
.end method
