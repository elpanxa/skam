.class Lio/casper/android/h/e$b;
.super Landroid/widget/ArrayAdapter;
.source "RedeemCreditsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lio/casper/android/c/b/b/a/a/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private mFreeAddons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/casper/android/h/e;


# direct methods
.method public constructor <init>(Lio/casper/android/h/e;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    .line 82
    const v0, 0x1090004

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 83
    iput-object p3, p0, Lio/casper/android/h/e$b;->mFreeAddons:Ljava/util/List;

    .line 84
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/casper/android/h/e$b;->mFreeAddons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 89
    .line 91
    iget-object v0, p0, Lio/casper/android/h/e$b;->mFreeAddons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/a/i/a;

    .line 93
    if-nez p2, :cond_0

    .line 94
    iget-object v1, p0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v1}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    const v2, 0x1090004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/i/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v1}, Lio/casper/android/h/e;->b(Lio/casper/android/h/e;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f07008c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/i/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v1, Lio/casper/android/h/e$b$1;

    invoke-direct {v1, p0, v0}, Lio/casper/android/h/e$b$1;-><init>(Lio/casper/android/h/e$b;Lio/casper/android/c/b/b/a/a/i/a;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object p2
.end method
