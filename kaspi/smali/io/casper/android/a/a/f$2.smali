.class Lio/casper/android/a/a/f$2;
.super Ljava/lang/Object;
.source "SendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$sendViewHolder:Lio/casper/android/a/c/e;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/f;Lio/casper/android/a/c/e;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lio/casper/android/a/a/f$2;->this$0:Lio/casper/android/a/a/f;

    iput-object p2, p0, Lio/casper/android/a/a/f$2;->val$sendViewHolder:Lio/casper/android/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/casper/android/a/a/f$2;->val$sendViewHolder:Lio/casper/android/a/c/e;

    iget-object v0, v0, Lio/casper/android/a/c/e;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 156
    return-void
.end method
