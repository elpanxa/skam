.class public final enum Lcom/afollestad/materialdialogs/GravityEnum;
.super Ljava/lang/Enum;
.source "GravityEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/afollestad/materialdialogs/GravityEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/GravityEnum;

.field public static final enum CENTER:Lcom/afollestad/materialdialogs/GravityEnum;

.field public static final enum END:Lcom/afollestad/materialdialogs/GravityEnum;

.field private static final HAS_RTL:Z

.field public static final enum START:Lcom/afollestad/materialdialogs/GravityEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "START"

    invoke-direct {v2, v3, v1}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "CENTER"

    invoke-direct {v2, v3, v0}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;

    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "END"

    invoke-direct {v2, v3, v4}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 7
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v1

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v0

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v4

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->$VALUES:[Lcom/afollestad/materialdialogs/GravityEnum;

    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->HAS_RTL:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/GravityEnum;

    return-object v0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->$VALUES:[Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/GravityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/GravityEnum;

    return-object v0
.end method


# virtual methods
.method public getGravityInt()I
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum$1;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid gravity constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    sget-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->HAS_RTL:Z

    if-eqz v0, :cond_0

    const v0, 0x800003

    .line 19
    :goto_0
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 17
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :pswitch_2
    sget-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->HAS_RTL:Z

    if-eqz v0, :cond_1

    const v0, 0x800005

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTextAlignment()I
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum$1;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 28
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 30
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
