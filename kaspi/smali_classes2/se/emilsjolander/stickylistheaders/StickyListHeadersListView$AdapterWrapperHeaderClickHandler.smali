.class Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/AdapterWrapper$OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapperHeaderClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 553
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->access$500(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;->this$0:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 556
    return-void
.end method
