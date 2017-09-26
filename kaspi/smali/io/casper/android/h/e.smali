.class public Lio/casper/android/h/e;
.super Landroid/app/DialogFragment;
.source "RedeemCreditsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/h/e$b;,
        Lio/casper/android/h/e$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RedeemCreditsDialog"


# instance fields
.field private mAddonManager:Lio/casper/android/l/b;

.field private mCallback:Lio/casper/android/h/e$a;

.field private mContext:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mSnapchatAccountManager:Lio/casper/android/l/s;

.field private mSuperSonicManager:Lio/casper/android/l/w;

.field private mView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a(Lio/casper/android/h/e;)Lio/casper/android/h/e$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/e;->mCallback:Lio/casper/android/h/e$a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/h/e;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/h/e;)Lio/casper/android/l/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/e;->mAddonManager:Lio/casper/android/l/b;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/h/e;)Lio/casper/android/l/w;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/e;->mSuperSonicManager:Lio/casper/android/l/w;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/h/e;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/e;->mSnapchatAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lio/casper/android/h/e$a;)V
    .locals 2

    .prologue
    .line 158
    iput-object p1, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    .line 159
    iput-object p2, p0, Lio/casper/android/h/e;->mCallback:Lio/casper/android/h/e$a;

    .line 161
    new-instance v0, Lio/casper/android/l/b;

    iget-object v1, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/casper/android/l/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/e;->mAddonManager:Lio/casper/android/l/b;

    .line 162
    new-instance v0, Lio/casper/android/l/w;

    iget-object v1, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/casper/android/l/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/e;->mSuperSonicManager:Lio/casper/android/l/w;

    .line 163
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/h/e;->mSnapchatAccountManager:Lio/casper/android/l/s;

    .line 165
    iget-object v0, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RedeemCreditsDialog"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/h/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const v8, 0x7f0a0079

    .line 50
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lio/casper/android/h/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 52
    iget-object v1, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    const v2, 0x7f07008b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/casper/android/h/e;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v5}, Lio/casper/android/l/w;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 53
    invoke-virtual {v0, v8}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 54
    invoke-virtual {v0, v8}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 55
    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 56
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 57
    new-instance v1, Lio/casper/android/h/e$1;

    invoke-direct {v1, p0}, Lio/casper/android/h/e$1;-><init>(Lio/casper/android/h/e;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 66
    new-instance v1, Lio/casper/android/h/e$b;

    iget-object v2, p0, Lio/casper/android/h/e;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lio/casper/android/h/e;->mSuperSonicManager:Lio/casper/android/l/w;

    invoke-virtual {v3}, Lio/casper/android/l/w;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lio/casper/android/h/e$b;-><init>(Lio/casper/android/h/e;Landroid/app/Activity;Ljava/util/List;)V

    new-instance v2, Lio/casper/android/h/e$2;

    invoke-direct {v2, p0}, Lio/casper/android/h/e$2;-><init>(Lio/casper/android/h/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter(Landroid/widget/ListAdapter;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 73
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method
