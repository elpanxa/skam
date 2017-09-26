.class Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;
.super Landroid/database/DataSetObserver;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setupChildren()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)V

    .line 53
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setupChildren()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)V

    .line 58
    return-void
.end method
