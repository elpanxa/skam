.class Lcom/gc/materialdesign/views/Switch$1;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/Switch;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/Switch;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/gc/materialdesign/views/Switch$1;->this$0:Lcom/gc/materialdesign/views/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch$1;->this$0:Lcom/gc/materialdesign/views/Switch;

    iget-boolean v0, v0, Lcom/gc/materialdesign/views/Switch;->check:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch$1;->this$0:Lcom/gc/materialdesign/views/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/Switch;->setChecked(Z)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/views/Switch$1;->this$0:Lcom/gc/materialdesign/views/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/Switch;->setChecked(Z)V

    goto :goto_0
.end method
