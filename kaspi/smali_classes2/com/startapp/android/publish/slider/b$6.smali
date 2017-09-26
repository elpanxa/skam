.class Lcom/startapp/android/publish/slider/b$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Landroid/view/animation/TranslateAnimation;

.field final synthetic c:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/ImageButton;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$6;->c:Lcom/startapp/android/publish/slider/b;

    iput-object p2, p0, Lcom/startapp/android/publish/slider/b$6;->a:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/startapp/android/publish/slider/b$6;->b:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$6;->c:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->e(Lcom/startapp/android/publish/slider/b;)I

    .line 240
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$6;->c:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->f(Lcom/startapp/android/publish/slider/b;)I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$6;->c:Lcom/startapp/android/publish/slider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/slider/b;->a(Lcom/startapp/android/publish/slider/b;I)I

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$6;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/b$6;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
