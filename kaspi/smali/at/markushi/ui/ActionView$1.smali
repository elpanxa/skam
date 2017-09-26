.class Lat/markushi/ui/ActionView$1;
.super Ljava/lang/Object;
.source "ActionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/markushi/ui/ActionView;->setAction(Lat/markushi/ui/action/Action;Lat/markushi/ui/action/Action;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/markushi/ui/ActionView;

.field final synthetic val$rotation:I

.field final synthetic val$toAction:Lat/markushi/ui/action/Action;


# direct methods
.method constructor <init>(Lat/markushi/ui/ActionView;Lat/markushi/ui/action/Action;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lat/markushi/ui/ActionView$1;->this$0:Lat/markushi/ui/ActionView;

    iput-object p2, p0, Lat/markushi/ui/ActionView$1;->val$toAction:Lat/markushi/ui/action/Action;

    iput p3, p0, Lat/markushi/ui/ActionView$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lat/markushi/ui/ActionView$1;->this$0:Lat/markushi/ui/ActionView;

    invoke-virtual {v0}, Lat/markushi/ui/ActionView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lat/markushi/ui/ActionView$1;->this$0:Lat/markushi/ui/ActionView;

    iget-object v1, p0, Lat/markushi/ui/ActionView$1;->val$toAction:Lat/markushi/ui/action/Action;

    const/4 v2, 0x1

    iget v3, p0, Lat/markushi/ui/ActionView$1;->val$rotation:I

    # invokes: Lat/markushi/ui/ActionView;->setAction(Lat/markushi/ui/action/Action;ZI)V
    invoke-static {v0, v1, v2, v3}, Lat/markushi/ui/ActionView;->access$000(Lat/markushi/ui/ActionView;Lat/markushi/ui/action/Action;ZI)V

    goto :goto_0
.end method
