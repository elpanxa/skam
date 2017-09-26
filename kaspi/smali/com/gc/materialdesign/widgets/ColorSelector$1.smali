.class Lcom/gc/materialdesign/widgets/ColorSelector$1;
.super Ljava/lang/Object;
.source "ColorSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/ColorSelector;-><init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/ColorSelector;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$1;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector$1;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/ColorSelector;->onColorSelectedListener:Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector$1;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/ColorSelector;->onColorSelectedListener:Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$1;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget v1, v1, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    invoke-interface {v0, v1}, Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;->onColorSelected(I)V

    .line 45
    :cond_0
    return-void
.end method
