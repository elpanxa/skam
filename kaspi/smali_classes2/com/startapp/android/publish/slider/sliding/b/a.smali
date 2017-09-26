.class public Lcom/startapp/android/publish/slider/sliding/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/b/a$c;,
        Lcom/startapp/android/publish/slider/sliding/b/a$a;,
        Lcom/startapp/android/publish/slider/sliding/b/a$d;,
        Lcom/startapp/android/publish/slider/sliding/b/a$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 297
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/a$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/a$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    .line 303
    :goto_0
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    invoke-interface {v0}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    .line 304
    return-void

    .line 298
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 299
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/a$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/a$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/a$d;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/b/a$d;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Lcom/startapp/android/publish/slider/sliding/b/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a;->b:Ljava/lang/Object;

    .line 313
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 338
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 360
    return-void
.end method

.method public a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V

    .line 440
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 463
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/startapp/android/publish/slider/sliding/a/d;
    .locals 2

    .prologue
    .line 481
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/View;)Lcom/startapp/android/publish/slider/sliding/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 401
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/b/a;->a:Lcom/startapp/android/publish/slider/sliding/b/a$b;

    sget-object v1, Lcom/startapp/android/publish/slider/sliding/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a$b;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 421
    return-void
.end method
