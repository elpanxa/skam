.class Lcom/gc/materialdesign/widgets/SnackBar$4;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/SnackBar;->dismiss()V
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
    .line 133
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar$4;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$4;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/gc/materialdesign/widgets/SnackBar;->access$101(Lcom/gc/materialdesign/widgets/SnackBar;)V

    .line 146
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
