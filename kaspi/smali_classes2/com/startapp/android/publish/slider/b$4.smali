.class Lcom/startapp/android/publish/slider/b$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 205
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$4;->c:Lcom/startapp/android/publish/slider/b;

    iput-object p2, p0, Lcom/startapp/android/publish/slider/b$4;->a:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/startapp/android/publish/slider/b$4;->b:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$4;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/b$4;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    return-void
.end method
