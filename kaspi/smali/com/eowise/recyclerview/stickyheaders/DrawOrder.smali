.class public final enum Lcom/eowise/recyclerview/stickyheaders/DrawOrder;
.super Ljava/lang/Enum;
.source "DrawOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eowise/recyclerview/stickyheaders/DrawOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

.field public static final enum OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

.field public static final enum UnderItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    const-string v1, "OverItems"

    invoke-direct {v0, v1, v2}, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    .line 8
    new-instance v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    const-string v1, "UnderItems"

    invoke-direct {v0, v1, v3}, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->UnderItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    sget-object v1, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->OverItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->UnderItems:Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->$VALUES:[Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eowise/recyclerview/stickyheaders/DrawOrder;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    return-object v0
.end method

.method public static values()[Lcom/eowise/recyclerview/stickyheaders/DrawOrder;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->$VALUES:[Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    invoke-virtual {v0}, [Lcom/eowise/recyclerview/stickyheaders/DrawOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eowise/recyclerview/stickyheaders/DrawOrder;

    return-object v0
.end method
