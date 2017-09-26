.class Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;
.super Landroid/os/AsyncTask;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

.field final synthetic val$holder:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;

.field final synthetic val$info:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->this$1:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$info:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    iput-object p3, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$holder:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # [Ljava/lang/Void;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$info:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->this$1:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;

    # getter for: Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;->access$300(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$info:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    iput-object p1, v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$info:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    const/4 v1, 0x0

    # setter for: Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->iconLoadTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->access$002(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 250
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->val$holder:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Adapter$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
