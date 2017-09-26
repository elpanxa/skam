.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mAdapterFixed:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$300(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;

    .line 190
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->isHeader()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasOnItemClickListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3, p3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnFixedItemClickListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$5;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mOnFixedItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    invoke-static {v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getId()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3, p3}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V

    goto :goto_0
.end method
