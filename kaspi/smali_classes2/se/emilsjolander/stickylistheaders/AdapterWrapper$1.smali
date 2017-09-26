.class Lse/emilsjolander/stickylistheaders/AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/emilsjolander/stickylistheaders/AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/emilsjolander/stickylistheaders/AdapterWrapper;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/AdapterWrapper;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/AdapterWrapper$1;->this$0:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/AdapterWrapper$1;->this$0:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->access$201(Lse/emilsjolander/stickylistheaders/AdapterWrapper;)V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/AdapterWrapper$1;->this$0:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    # getter for: Lse/emilsjolander/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;
    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->access$000(Lse/emilsjolander/stickylistheaders/AdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/AdapterWrapper$1;->this$0:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    # invokes: Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->access$101(Lse/emilsjolander/stickylistheaders/AdapterWrapper;)V

    .line 44
    return-void
.end method
