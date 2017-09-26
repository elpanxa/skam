.class Lcom/startapp/android/publish/list3d/List3DActivity$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/list3d/List3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/list3d/List3DActivity;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/list3d/List3DActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    new-instance v1, Lcom/startapp/android/publish/h/s;

    iget-object v2, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v2}, Lcom/startapp/android/publish/list3d/List3DActivity;->b(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v0, v1}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/h/s;)V

    .line 147
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->finish()V

    .line 148
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->e()Ljava/lang/String;

    move-result-object v4

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->k()Z

    move-result v1

    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->n()Ljava/lang/String;

    move-result-object v5

    .line 131
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->a(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->m()Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v5, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    invoke-direct {p0, v5, v0, v2, v3}, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    if-nez v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    new-instance v1, Lcom/startapp/android/publish/h/s;

    iget-object v4, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v4}, Lcom/startapp/android/publish/list3d/List3DActivity;->b(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 138
    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    new-instance v5, Lcom/startapp/android/publish/h/s;

    iget-object v0, p0, Lcom/startapp/android/publish/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/list3d/List3DActivity;

    invoke-static {v0}, Lcom/startapp/android/publish/list3d/List3DActivity;->b(Lcom/startapp/android/publish/list3d/List3DActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getSmartRedirectTimeout()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;J)V

    goto :goto_0
.end method
