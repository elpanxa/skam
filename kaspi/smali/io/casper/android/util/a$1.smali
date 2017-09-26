.class final Lio/casper/android/util/a$1;
.super Ljava/lang/Object;
.source "AppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/util/a;->a(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$length:I

.field final synthetic val$resid:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lio/casper/android/util/a$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lio/casper/android/util/a$1;->val$resid:I

    iput p3, p0, Lio/casper/android/util/a$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lio/casper/android/util/a$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lio/casper/android/util/a$1;->val$resid:I

    iget v2, p0, Lio/casper/android/util/a$1;->val$length:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method
