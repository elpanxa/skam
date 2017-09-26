.class Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;
.super Ljava/lang/Object;
.source "LinearListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOnClickListener"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;


# direct methods
.method public constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->mPosition:I

    .line 279
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$100(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$200(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$100(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    iget v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->mPosition:I

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    .line 285
    # getter for: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$200(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget v4, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;->mPosition:I

    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    .line 284
    invoke-interface/range {v0 .. v5}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;->onItemClick(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;Landroid/view/View;IJ)V

    .line 287
    :cond_0
    return-void
.end method
