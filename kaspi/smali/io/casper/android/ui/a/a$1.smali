.class Lio/casper/android/ui/a/a$1;
.super Ljava/lang/Object;
.source "StickerView.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/ui/a/a;->a(Lcom/imojiapp/imoji/sdk/Imoji;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/a/a;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/ui/a/a;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    iput-object p2, p0, Lio/casper/android/ui/a/a$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-static {v0}, Lio/casper/android/ui/a/a;->c(Lio/casper/android/ui/a/a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070072

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 118
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-virtual {v1}, Lio/casper/android/ui/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 107
    new-instance v1, Lio/casper/android/ui/a/a/a;

    iget-object v2, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-static {v2}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/casper/android/ui/a/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    .line 108
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-static {v0}, Lio/casper/android/ui/a/a;->b(Lio/casper/android/ui/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a/a;->a(Lio/casper/android/ui/a/a/c;)V

    .line 110
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->this$0:Lio/casper/android/ui/a/a;

    invoke-virtual {v0}, Lio/casper/android/ui/a/a;->invalidate()V

    .line 111
    iget-object v0, p0, Lio/casper/android/ui/a/a$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 112
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
