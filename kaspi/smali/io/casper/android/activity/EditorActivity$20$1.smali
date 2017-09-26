.class Lio/casper/android/activity/EditorActivity$20$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/flask/colorpicker/builder/ColorPickerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$20;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$20;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$20$1;->this$1:Lio/casper/android/activity/EditorActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$20$1;->this$1:Lio/casper/android/activity/EditorActivity$20;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->s(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/ui/d;->setColor(I)V

    .line 1113
    return-void
.end method
