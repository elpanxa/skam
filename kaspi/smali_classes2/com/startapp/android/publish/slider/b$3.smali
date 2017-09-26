.class Lcom/startapp/android/publish/slider/b$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$3;->a:Lcom/startapp/android/publish/slider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$3;->a:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->d(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 129
    const/4 v0, 0x0

    return v0
.end method
