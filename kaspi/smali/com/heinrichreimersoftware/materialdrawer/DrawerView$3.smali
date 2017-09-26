.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;
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
    .line 157
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 160
    if-eqz p3, :cond_0

    .line 161
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$3;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->mProfileAdapter:Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/heinrichreimersoftware/materialdrawer/adapter/DrawerProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->selectProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    .line 163
    :cond_0
    return-void
.end method
