.class final Lcom/heinrichreimersoftware/materialdrawer/DrawerView$2;
.super Landroid/util/Property;
.source "DrawerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/widget/ScrollView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ScrollView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$2;->get(Landroid/widget/ScrollView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/widget/ScrollView;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 95
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Landroid/widget/ScrollView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$2;->set(Landroid/widget/ScrollView;Ljava/lang/Integer;)V

    return-void
.end method
