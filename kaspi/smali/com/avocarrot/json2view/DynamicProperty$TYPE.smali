.class public final enum Lcom/avocarrot/json2view/DynamicProperty$TYPE;
.super Ljava/lang/Enum;
.source "DynamicProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/json2view/DynamicProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/json2view/DynamicProperty$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum BASE64:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum BOOLEAN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum COLOR:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum DIMEN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum DRAWABLE:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum FLOAT:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum INTEGER:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum JSON:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum NO_VALID:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum REF:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field public static final enum STRING:Lcom/avocarrot/json2view/DynamicProperty$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "NO_VALID"

    invoke-direct {v0, v1, v3}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->NO_VALID:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 32
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->STRING:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 33
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "DIMEN"

    invoke-direct {v0, v1, v5}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DIMEN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 34
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v6}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->INTEGER:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 35
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->FLOAT:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 36
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "COLOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->COLOR:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 37
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "REF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->REF:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 38
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->BOOLEAN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 39
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "BASE64"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->BASE64:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 40
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "DRAWABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DRAWABLE:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 41
    new-instance v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    const-string v1, "JSON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->JSON:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->NO_VALID:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->STRING:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DIMEN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->INTEGER:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->FLOAT:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->COLOR:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->REF:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->BOOLEAN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->BASE64:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DRAWABLE:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->JSON:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->$VALUES:[Lcom/avocarrot/json2view/DynamicProperty$TYPE;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/json2view/DynamicProperty$TYPE;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/json2view/DynamicProperty$TYPE;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->$VALUES:[Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v0}, [Lcom/avocarrot/json2view/DynamicProperty$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    return-object v0
.end method
