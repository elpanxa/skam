.class Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapperDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$600(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 494
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$600(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 499
    return-void
.end method
