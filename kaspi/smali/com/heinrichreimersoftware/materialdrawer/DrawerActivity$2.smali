.class Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
    .locals 2

    .prologue
    .line 99
    instance-of v0, p1, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    move-object v0, p1

    check-cast v0, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerFragmentItem;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->switchFragment(Landroid/support/v4/app/Fragment;)V
    invoke-static {v1, v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->access$000(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;Landroid/support/v4/app/Fragment;)V

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->hasOnItemClickListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;->getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->hasOnItemClickListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$2;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->access$100(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V

    goto :goto_0
.end method
