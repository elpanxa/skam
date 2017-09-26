.class Lcom/startapp/android/publish/adinformation/c$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adinformation/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adinformation/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adinformation/c;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/startapp/android/publish/adinformation/c$4;->a:Lcom/startapp/android/publish/adinformation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/startapp/android/publish/adinformation/c$4;->a:Lcom/startapp/android/publish/adinformation/c;

    invoke-static {v0}, Lcom/startapp/android/publish/adinformation/c;->f(Lcom/startapp/android/publish/adinformation/c;)V

    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method
