.class final Lcom/startapp/android/publish/slider/sliding/a/e$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/slider/sliding/a/e;->a(Lcom/startapp/android/publish/slider/sliding/a/e$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/slider/sliding/a/e$a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/slider/sliding/a/e$a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/a/e$1;->a:Lcom/startapp/android/publish/slider/sliding/a/e$a;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/e$1;->a:Lcom/startapp/android/publish/slider/sliding/a/e$a;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/slider/sliding/a/e$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/e$1;->a:Lcom/startapp/android/publish/slider/sliding/a/e$a;

    invoke-interface {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/a/e$a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/e$1;->a:Lcom/startapp/android/publish/slider/sliding/a/e$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapp/android/publish/slider/sliding/a/e$a;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
