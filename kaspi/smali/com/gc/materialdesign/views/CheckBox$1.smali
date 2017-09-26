.class Lcom/gc/materialdesign/views/CheckBox$1;
.super Ljava/lang/Object;
.source "CheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/CheckBox;->setAttributes(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/CheckBox;

.field final synthetic val$check:Z


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/CheckBox;Z)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/gc/materialdesign/views/CheckBox$1;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iput-boolean p2, p0, Lcom/gc/materialdesign/views/CheckBox$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$1;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget-boolean v1, p0, Lcom/gc/materialdesign/views/CheckBox$1;->val$check:Z

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$1;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/CheckBox;->setPressed(Z)V

    .line 67
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$1;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget-object v1, p0, Lcom/gc/materialdesign/views/CheckBox$1;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    # invokes: Lcom/gc/materialdesign/views/CheckBox;->changeBackgroundColor(I)V
    invoke-static {v0, v1}, Lcom/gc/materialdesign/views/CheckBox;->access$000(Lcom/gc/materialdesign/views/CheckBox;I)V

    .line 69
    return-void
.end method
