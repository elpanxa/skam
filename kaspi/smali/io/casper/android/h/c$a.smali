.class Lio/casper/android/h/c$a;
.super Landroid/widget/ArrayAdapter;
.source "MyStoryStatsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lio/casper/android/n/a/c/b/z;",
        ">;"
    }
.end annotation


# instance fields
.field private mStoryNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/z;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/casper/android/h/c;


# direct methods
.method public constructor <init>(Lio/casper/android/h/c;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/z;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lio/casper/android/h/c$a;->this$0:Lio/casper/android/h/c;

    .line 84
    const v0, 0x1090004

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    iput-object p3, p0, Lio/casper/android/h/c$a;->mStoryNotes:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/casper/android/h/c$a;->mStoryNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 91
    .line 93
    iget-object v0, p0, Lio/casper/android/h/c$a;->mStoryNotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/casper/android/n/a/c/b/z;

    .line 95
    if-nez p2, :cond_0

    .line 96
    iget-object v0, p0, Lio/casper/android/h/c$a;->this$0:Lio/casper/android/h/c;

    invoke-static {v0}, Lio/casper/android/h/c;->a(Lio/casper/android/h/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    :cond_0
    const v0, 0x7f0c00e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0c0115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 104
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/z;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v6}, Lio/casper/android/n/a/c/b/z;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-object p2

    .line 110
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
