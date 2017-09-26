.class Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;

.field final synthetic val$listener:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;->val$listener:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;->val$listener:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;->this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;

    iget-object v1, v1, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;->adapter:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    invoke-virtual {v1, p3}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;->getItem(I)Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$OnIntentPickedListener;->onIntentPicked(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)V

    .line 126
    return-void
.end method
