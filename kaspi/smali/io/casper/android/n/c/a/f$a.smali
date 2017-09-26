.class public final enum Lio/casper/android/n/c/a/f$a;
.super Ljava/lang/Enum;
.source "SnapsTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/f$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/f$a;

.field public static final enum CLIENT_ID:Lio/casper/android/n/c/a/f$a;

.field public static final enum ID:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_BROADCAST:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_RECEIVED:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_REPLAYED:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_SCREENSHOT:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_SENT:Lio/casper/android/n/c/a/f$a;

.field public static final enum IS_VIEWED:Lio/casper/android/n/c/a/f$a;

.field public static final enum LAST_INTERACTION_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

.field public static final enum RECIPIENT:Lio/casper/android/n/c/a/f$a;

.field public static final enum SENDER:Lio/casper/android/n/c/a/f$a;

.field public static final enum SENT_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

.field public static final enum STATE:Lio/casper/android/n/c/a/f$a;

.field public static final enum TYPE:Lio/casper/android/n/c/a/f$a;

.field public static final enum VIEW_TIME:Lio/casper/android/n/c/a/f$a;

.field public static final enum ZIPPED:Lio/casper/android/n/c/a/f$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->ID:Lio/casper/android/n/c/a/f$a;

    .line 16
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "SENDER"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "sender"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->SENDER:Lio/casper/android/n/c/a/f$a;

    .line 17
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "RECIPIENT"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "recipient"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->RECIPIENT:Lio/casper/android/n/c/a/f$a;

    .line 18
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "TYPE"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "type"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->TYPE:Lio/casper/android/n/c/a/f$a;

    .line 19
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "STATE"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "state"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->STATE:Lio/casper/android/n/c/a/f$a;

    .line 20
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "ZIPPED"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "zipped"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->ZIPPED:Lio/casper/android/n/c/a/f$a;

    .line 21
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "SENT_TIMESTAMP"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "sent_timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->SENT_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    .line 22
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "VIEW_TIME"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "view_time"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->VIEW_TIME:Lio/casper/android/n/c/a/f$a;

    .line 23
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "LAST_INTERACTION_TIMESTAMP"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "last_interaction_timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->LAST_INTERACTION_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    .line 24
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "CLIENT_ID"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "client_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->CLIENT_ID:Lio/casper/android/n/c/a/f$a;

    .line 25
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_SENT"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "is_sent"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_SENT:Lio/casper/android/n/c/a/f$a;

    .line 26
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_RECEIVED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "is_received"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_RECEIVED:Lio/casper/android/n/c/a/f$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_VIEWED"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "is_viewed"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_VIEWED:Lio/casper/android/n/c/a/f$a;

    .line 28
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_SCREENSHOT"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "is_screenshot"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/f$a;

    .line 29
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_REPLAYED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "is_replayed"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_REPLAYED:Lio/casper/android/n/c/a/f$a;

    .line 30
    new-instance v0, Lio/casper/android/n/c/a/f$a;

    const-string v1, "IS_BROADCAST"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "is_broadcast"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/f$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/f$a;->IS_BROADCAST:Lio/casper/android/n/c/a/f$a;

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [Lio/casper/android/n/c/a/f$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/f$a;->ID:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/f$a;->SENDER:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/n/c/a/f$a;->RECIPIENT:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/n/c/a/f$a;->TYPE:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/n/c/a/f$a;->STATE:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a/f$a;->ZIPPED:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/n/c/a/f$a;->SENT_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/casper/android/n/c/a/f$a;->VIEW_TIME:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/casper/android/n/c/a/f$a;->LAST_INTERACTION_TIMESTAMP:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/casper/android/n/c/a/f$a;->CLIENT_ID:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_SENT:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_RECEIVED:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_VIEWED:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_SCREENSHOT:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_REPLAYED:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/casper/android/n/c/a/f$a;->IS_BROADCAST:Lio/casper/android/n/c/a/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a/f$a;->$VALUES:[Lio/casper/android/n/c/a/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/casper/android/e/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lio/casper/android/n/c/a/f$a;->columnNumber:I

    .line 38
    iput-object p4, p0, Lio/casper/android/n/c/a/f$a;->columnName:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lio/casper/android/n/c/a/f$a;->dataType:Lio/casper/android/e/a/b;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/f$a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lio/casper/android/n/c/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/f$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/f$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lio/casper/android/n/c/a/f$a;->$VALUES:[Lio/casper/android/n/c/a/f$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/f$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/casper/android/n/c/a/f$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lio/casper/android/n/c/a/f$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/casper/android/n/c/a/f$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
