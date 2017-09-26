.class Lcom/gc/materialdesign/widgets/Dialog$4$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/Dialog$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gc/materialdesign/widgets/Dialog$4;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/Dialog$4;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog$4$1;->this$1:Lcom/gc/materialdesign/widgets/Dialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog$4$1;->this$1:Lcom/gc/materialdesign/widgets/Dialog$4;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/Dialog$4;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/gc/materialdesign/widgets/Dialog;->access$001(Lcom/gc/materialdesign/widgets/Dialog;)V

    .line 207
    return-void
.end method
