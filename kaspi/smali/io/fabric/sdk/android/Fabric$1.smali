.class Lio/fabric/sdk/android/Fabric$1;
.super Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/Fabric;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/Fabric;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/Fabric;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$1;->this$0:Lio/fabric/sdk/android/Fabric;

    invoke-direct {p0}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$1;->this$0:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    .line 350
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$1;->this$0:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    .line 360
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$1;->this$0:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    .line 355
    return-void
.end method
