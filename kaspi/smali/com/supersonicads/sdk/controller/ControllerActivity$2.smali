.class Lcom/supersonicads/sdk/controller/ControllerActivity$2;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/ControllerActivity;->cancelScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$2;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$2;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 338
    return-void
.end method
