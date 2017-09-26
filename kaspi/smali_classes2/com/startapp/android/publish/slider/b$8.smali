.class Lcom/startapp/android/publish/slider/b$8;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/startapp/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/b;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/startapp/android/publish/slider/b$8;->b:Lcom/startapp/android/publish/slider/b;

    iput-object p2, p0, Lcom/startapp/android/publish/slider/b$8;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/startapp/android/publish/slider/b$8;->b:Lcom/startapp/android/publish/slider/b;

    invoke-static {v0}, Lcom/startapp/android/publish/slider/b;->d(Lcom/startapp/android/publish/slider/b;)Lcom/startapp/android/publish/slider/sliding/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/slider/b$8;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/slider/sliding/DrawerLayout;->h(Landroid/view/View;)V

    .line 284
    return-void
.end method
