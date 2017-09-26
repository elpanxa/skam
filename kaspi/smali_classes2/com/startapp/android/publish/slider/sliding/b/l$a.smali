.class Lcom/startapp/android/publish/slider/sliding/b/l$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/slider/sliding/b/l$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/b/l$a;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 201
    return-void
.end method

.method public a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/b/a;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
