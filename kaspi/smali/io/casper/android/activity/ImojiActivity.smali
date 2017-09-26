.class public Lio/casper/android/activity/ImojiActivity;
.super Lio/casper/android/activity/a/a;
.source "ImojiActivity.java"


# static fields
.field public static final KEY_IMOJI:Ljava/lang/String; = "imoji"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchText:Landroid/widget/EditText;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/ImojiActivity;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mSearchText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/activity/ImojiActivity;->mSearchText:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lio/casper/android/util/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    invoke-static {v0}, Lio/casper/android/i/i;->c(Ljava/lang/String;)Lio/casper/android/i/i;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lio/casper/android/activity/ImojiActivity;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mAdManager:Lio/casper/android/l/a;

    .line 50
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 52
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 53
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 54
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mSearchText:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0c00d3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 57
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/ImojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 60
    invoke-virtual {p0}, Lio/casper/android/activity/ImojiActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 62
    new-instance v0, Lio/casper/android/i/h;

    invoke-direct {v0}, Lio/casper/android/i/h;-><init>()V

    .line 63
    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lio/casper/android/activity/ImojiActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mSearchText:Landroid/widget/EditText;

    new-instance v1, Lio/casper/android/activity/ImojiActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ImojiActivity$1;-><init>(Lio/casper/android/activity/ImojiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/casper/android/activity/ImojiActivity$2;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ImojiActivity$2;-><init>(Lio/casper/android/activity/ImojiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 119
    invoke-virtual {p0}, Lio/casper/android/activity/ImojiActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 120
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/ImojiActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    const v1, 0x7f0701bc

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 134
    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 135
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 136
    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 137
    new-instance v1, Lio/casper/android/activity/ImojiActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ImojiActivity$3;-><init>(Lio/casper/android/activity/ImojiActivity;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 147
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0159
        :pswitch_0
    .end packed-switch
.end method
