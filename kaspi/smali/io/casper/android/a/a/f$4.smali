.class Lio/casper/android/a/a/f$4;
.super Ljava/lang/Object;
.source "SendAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/f;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/f;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lio/casper/android/a/a/f$4;->this$0:Lio/casper/android/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lio/casper/android/a/a/f$4;->this$0:Lio/casper/android/a/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/casper/android/a/a/f;->b(Lio/casper/android/a/a/f;Z)Z

    .line 215
    :goto_0
    iget-object v0, p0, Lio/casper/android/a/a/f$4;->this$0:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->notifyDataSetChanged()V

    .line 217
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lio/casper/android/a/a/f$4;->this$0:Lio/casper/android/a/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/casper/android/a/a/f;->b(Lio/casper/android/a/a/f;Z)Z

    goto :goto_0
.end method
