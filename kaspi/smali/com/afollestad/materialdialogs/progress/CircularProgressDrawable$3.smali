.class Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$3;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$3;->this$0:Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable$3;->this$0:Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;

    # invokes: Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->toggleAppearingMode()V
    invoke-static {v0}, Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;->access$000(Lcom/afollestad/materialdialogs/progress/CircularProgressDrawable;)V

    .line 203
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
