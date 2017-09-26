.class Lcom/avocarrot/androidsdk/AvocarrotInstream$1;
.super Landroid/database/DataSetObserver;
.source "AvocarrotInstream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/AvocarrotInstream;-><init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/AvocarrotInstream;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInstream;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstream$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstream;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstream$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstream;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInstream;->instreamController:Lcom/avocarrot/androidsdk/AvocarrotInstreamController;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->notifyUserDataSetChanged()V

    .line 36
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstream$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstream;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstream;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstream$1;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInstream;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstream;->notifyDataSetInvalidated()V

    .line 40
    return-void
.end method
