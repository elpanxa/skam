.class Lio/casper/android/i/a$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/a;


# direct methods
.method constructor <init>(Lio/casper/android/i/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/casper/android/i/a$1;->this$0:Lio/casper/android/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/casper/android/i/a$1;->this$0:Lio/casper/android/i/a;

    invoke-virtual {v0}, Lio/casper/android/i/a;->a()V

    .line 77
    return-void
.end method
