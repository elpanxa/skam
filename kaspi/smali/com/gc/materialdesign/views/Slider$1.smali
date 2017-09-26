.class Lcom/gc/materialdesign/views/Slider$1;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/Slider;->setValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/Slider;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/Slider;I)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/gc/materialdesign/views/Slider$1;->this$0:Lcom/gc/materialdesign/views/Slider;

    iput p2, p0, Lcom/gc/materialdesign/views/Slider$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$1;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v1, p0, Lcom/gc/materialdesign/views/Slider$1;->val$value:I

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/Slider;->setValue(I)V

    .line 260
    return-void
.end method
