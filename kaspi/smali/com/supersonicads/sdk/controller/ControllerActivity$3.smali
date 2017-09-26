.class Lcom/supersonicads/sdk/controller/ControllerActivity$3;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/ControllerActivity;->onHide()V
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
    .line 629
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$3;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity$3;->this$0:Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 634
    return-void
.end method
