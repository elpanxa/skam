.class Lcom/startapp/android/publish/slider/sliding/b/a$a;
.super Lcom/startapp/android/publish/slider/sliding/b/a$d;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/slider/sliding/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/b/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/startapp/android/publish/slider/sliding/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/startapp/android/publish/slider/sliding/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/b/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/slider/sliding/b/a$a$1;-><init>(Lcom/startapp/android/publish/slider/sliding/b/a$a;Lcom/startapp/android/publish/slider/sliding/b/a;)V

    invoke-static {v0}, Lcom/startapp/android/publish/slider/sliding/b/b;->a(Lcom/startapp/android/publish/slider/sliding/b/b$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 205
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/b;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 206
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Lcom/startapp/android/publish/slider/sliding/a/a;)V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p3}, Lcom/startapp/android/publish/slider/sliding/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/startapp/android/publish/slider/sliding/b/b;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/b;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 199
    invoke-static {p1, p2, p3, p4}, Lcom/startapp/android/publish/slider/sliding/b/b;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 180
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/b;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 181
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 193
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/b;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 194
    return-void
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 211
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/b/b;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 212
    return-void
.end method
