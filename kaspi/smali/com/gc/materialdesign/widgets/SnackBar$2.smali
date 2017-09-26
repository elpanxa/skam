.class Lcom/gc/materialdesign/widgets/SnackBar$2;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/widgets/SnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/SnackBar;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/SnackBar;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar$2;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$2;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    # getter for: Lcom/gc/materialdesign/widgets/SnackBar;->mTimer:I
    invoke-static {v0}, Lcom/gc/materialdesign/widgets/SnackBar;->access$000(Lcom/gc/materialdesign/widgets/SnackBar;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$2;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/SnackBar;->handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
