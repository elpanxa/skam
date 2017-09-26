.class public Lcom/startapp/android/publish/list3d/b;
.super Landroid/widget/ArrayAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/startapp/android/publish/list3d/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/list3d/ListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput-object p4, p0, Lcom/startapp/android/publish/list3d/b;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 26
    .line 28
    if-nez p2, :cond_0

    .line 29
    new-instance v0, Lcom/startapp/android/publish/list3d/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/list3d/d;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/d;->a()Landroid/widget/RelativeLayout;

    move-result-object p2

    move-object v1, v0

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/list3d/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/ListItem;

    .line 37
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/model/MetaData;->getTemplate(Ljava/lang/String;)Lcom/startapp/android/publish/model/MetaDataStyle;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/list3d/d;->a(Lcom/startapp/android/publish/model/MetaDataStyle;)V

    .line 41
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/d;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/d;->d()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget-object v2, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/startapp/android/publish/list3d/e;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x1080093

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :goto_1
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/d;->e()Lcom/startapp/android/publish/h/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->j()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/h/n;->setRating(F)V

    .line 51
    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/list3d/d;->a(Z)V

    .line 54
    sget-object v1, Lcom/startapp/android/publish/list3d/e;->a:Lcom/startapp/android/publish/list3d/e;

    invoke-virtual {p0}, Lcom/startapp/android/publish/list3d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/list3d/ListItem;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/startapp/android/publish/h/s;

    iget-object v5, p0, Lcom/startapp/android/publish/list3d/b;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/list3d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 56
    return-object p2

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/list3d/d;

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/startapp/android/publish/list3d/d;->b()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
