.class Lcom/startapp/android/publish/slider/sliding/b/a$c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/slider/sliding/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/sliding/b/a$c;->a(Lcom/startapp/android/publish/slider/sliding/b/a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/sliding/b/a;

.field final synthetic b:Lcom/startapp/android/publish/slider/sliding/b/a$c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/sliding/b/a$c;Lcom/startapp/android/publish/slider/sliding/b/a;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->b:Lcom/startapp/android/publish/slider/sliding/b/a$c;

    iput-object p2, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/b/a;->b(Landroid/view/View;)Lcom/startapp/android/publish/slider/sliding/a/d;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/View;I)V

    .line 252
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    new-instance v1, Lcom/startapp/android/publish/slider/sliding/a/a;

    invoke-direct {v1, p2}, Lcom/startapp/android/publish/slider/sliding/a/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V

    .line 236
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 230
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 241
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/b/a$c$1;->a:Lcom/startapp/android/publish/slider/sliding/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/b/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 257
    return-void
.end method
