.class Lio/casper/android/activity/EditorActivity$11$1$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/flask/colorpicker/builder/ColorPickerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$11$1;->onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/activity/EditorActivity$11$1;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$11$1;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$11$1$2;->this$2:Lio/casper/android/activity/EditorActivity$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$11$1$2;->this$2:Lio/casper/android/activity/EditorActivity$11$1;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/ui/a;->setBackgroundColor(I)V

    .line 997
    return-void
.end method
