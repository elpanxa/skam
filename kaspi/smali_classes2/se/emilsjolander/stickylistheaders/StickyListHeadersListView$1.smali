.class Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->swapHeader(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 395
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$500(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 396
    invoke-static {v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$200(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 397
    invoke-static {v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$300(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$400(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 395
    invoke-interface/range {v0 .. v6}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 398
    return-void
.end method
