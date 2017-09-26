.class public final enum Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
.super Ljava/lang/Enum;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/afollestad/materialdialogs/MaterialDialog$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field public static final enum SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1570
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const-string v1, "MULTI"

    invoke-direct {v0, v1, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 1569
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->$VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getLayoutForType(Lcom/afollestad/materialdialogs/MaterialDialog$ListType;)I
    .locals 2

    .prologue
    .line 1573
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$4;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid list type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :pswitch_0
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem:I

    .line 1579
    :goto_0
    return v0

    .line 1577
    :pswitch_1
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem_singlechoice:I

    goto :goto_0

    .line 1579
    :pswitch_2
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_listitem_multichoice:I

    goto :goto_0

    .line 1573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
    .locals 1

    .prologue
    .line 1569
    const-class v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-object v0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;
    .locals 1

    .prologue
    .line 1569
    sget-object v0, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->$VALUES:[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    return-object v0
.end method
