.class Lio/casper/android/activity/EditorActivity$52;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$52;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$52;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->d(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/casper/android/ui/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$52;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->c()V

    .line 692
    return-void
.end method
