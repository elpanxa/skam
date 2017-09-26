.class Lcom/afollestad/materialdialogs/MaterialDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "MaterialDialogAdapter.java"


# instance fields
.field private final dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private final layout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field public mInitRadio:Z

.field public mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 33
    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->layout:I

    .line 34
    iget-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 35
    return-void
.end method

.method private isRTL()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 143
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    .line 109
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 118
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 130
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 129
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    if-nez p2, :cond_4

    .line 61
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->layout:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 63
    :goto_0
    sget v0, Lcom/afollestad/materialdialogs/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialogAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 89
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    move-object v0, v2

    .line 92
    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 95
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_1
    :goto_2
    return-object v2

    .line 67
    :pswitch_0
    sget v1, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 68
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-ne v3, p1, :cond_2

    move v3, v4

    .line 69
    :goto_3
    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v6}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;I)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->mInitRadio:Z

    if-eqz v3, :cond_0

    .line 72
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->mRadioButton:Landroid/widget/RadioButton;

    goto/16 :goto_1

    :cond_2
    move v3, v5

    .line 68
    goto :goto_3

    .line 77
    :pswitch_1
    sget v1, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 78
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 79
    iget-object v6, p0, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v6}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;I)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 97
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    move-object v2, p2

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
