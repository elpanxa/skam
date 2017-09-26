.class public final enum Lio/casper/android/n/c/a/g$a;
.super Ljava/lang/Enum;
.source "StoriesTable.java"

# interfaces
.implements Lio/casper/android/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a/g$a;",
        ">;",
        "Lio/casper/android/e/a/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a/g$a;

.field public static final enum CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/g$a;

.field public static final enum CLIENT_ID:Lio/casper/android/n/c/a/g$a;

.field public static final enum ID:Lio/casper/android/n/c/a/g$a;

.field public static final enum IS_SHARED:Lio/casper/android/n/c/a/g$a;

.field public static final enum MEDIA_ID:Lio/casper/android/n/c/a/g$a;

.field public static final enum MEDIA_IV:Lio/casper/android/n/c/a/g$a;

.field public static final enum MEDIA_KEY:Lio/casper/android/n/c/a/g$a;

.field public static final enum MEDIA_TYPE:Lio/casper/android/n/c/a/g$a;

.field public static final enum NEEDS_AUTH:Lio/casper/android/n/c/a/g$a;

.field public static final enum THUMBNAIL_IV:Lio/casper/android/n/c/a/g$a;

.field public static final enum TIME:Lio/casper/android/n/c/a/g$a;

.field public static final enum TIMESTAMP:Lio/casper/android/n/c/a/g$a;

.field public static final enum TIME_LEFT:Lio/casper/android/n/c/a/g$a;

.field public static final enum USERNAME:Lio/casper/android/n/c/a/g$a;

.field public static final enum ZIPPED:Lio/casper/android/n/c/a/g$a;


# instance fields
.field private columnName:Ljava/lang/String;

.field private columnNumber:I

.field private dataType:Lio/casper/android/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    .line 16
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "USERNAME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "username"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    .line 17
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "client_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->CLIENT_ID:Lio/casper/android/n/c/a/g$a;

    .line 18
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "timestamp"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->TIMESTAMP:Lio/casper/android/n/c/a/g$a;

    .line 19
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "MEDIA_ID"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "media_id"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_ID:Lio/casper/android/n/c/a/g$a;

    .line 20
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "MEDIA_KEY"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "media_key"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_KEY:Lio/casper/android/n/c/a/g$a;

    .line 21
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "MEDIA_IV"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "media_iv"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_IV:Lio/casper/android/n/c/a/g$a;

    .line 22
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "THUMBNAIL_IV"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "thumbnail_iv"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/g$a;

    .line 23
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "MEDIA_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "media_type"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/g$a;

    .line 24
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "TIME"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "time"

    sget-object v5, Lio/casper/android/e/a/b;->INTEGER:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->TIME:Lio/casper/android/n/c/a/g$a;

    .line 25
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "CAPTION_TEXT_DISPLAY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "caption_text_display"

    sget-object v5, Lio/casper/android/e/a/b;->TEXT:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/g$a;

    .line 26
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "ZIPPED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "zipped"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->ZIPPED:Lio/casper/android/n/c/a/g$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "TIME_LEFT"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "time_left"

    sget-object v5, Lio/casper/android/e/a/b;->LONG:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->TIME_LEFT:Lio/casper/android/n/c/a/g$a;

    .line 28
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "NEEDS_AUTH"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "needs_auth"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/g$a;

    .line 29
    new-instance v0, Lio/casper/android/n/c/a/g$a;

    const-string v1, "IS_SHARED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "is_shared"

    sget-object v5, Lio/casper/android/e/a/b;->BOOLEAN:Lio/casper/android/e/a/b;

    invoke-direct/range {v0 .. v5}, Lio/casper/android/n/c/a/g$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lio/casper/android/e/a/b;)V

    sput-object v0, Lio/casper/android/n/c/a/g$a;->IS_SHARED:Lio/casper/android/n/c/a/g$a;

    .line 13
    const/16 v0, 0xf

    new-array v0, v0, [Lio/casper/android/n/c/a/g$a;

    const/4 v1, 0x0

    sget-object v2, Lio/casper/android/n/c/a/g$a;->ID:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/casper/android/n/c/a/g$a;->USERNAME:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/casper/android/n/c/a/g$a;->CLIENT_ID:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/casper/android/n/c/a/g$a;->TIMESTAMP:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/casper/android/n/c/a/g$a;->MEDIA_ID:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a/g$a;->MEDIA_KEY:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/n/c/a/g$a;->MEDIA_IV:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/casper/android/n/c/a/g$a;->THUMBNAIL_IV:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/casper/android/n/c/a/g$a;->MEDIA_TYPE:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/casper/android/n/c/a/g$a;->TIME:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/casper/android/n/c/a/g$a;->CAPTION_TEXT_DISPLAY:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/casper/android/n/c/a/g$a;->ZIPPED:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/casper/android/n/c/a/g$a;->TIME_LEFT:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/casper/android/n/c/a/g$a;->NEEDS_AUTH:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/casper/android/n/c/a/g$a;->IS_SHARED:Lio/casper/android/n/c/a/g$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a/g$a;->$VALUES:[Lio/casper/android/n/c/a/g$a;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lio/casper/android/n/c/a/g$a;->columnNumber:I

    .line 37
    iput-object p4, p0, Lio/casper/android/n/c/a/g$a;->columnName:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lio/casper/android/n/c/a/g$a;->dataType:Lio/casper/android/e/a/b;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a/g$a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lio/casper/android/n/c/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a/g$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a/g$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lio/casper/android/n/c/a/g$a;->$VALUES:[Lio/casper/android/n/c/a/g$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a/g$a;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/casper/android/n/c/a/g$a;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lio/casper/android/n/c/a/g$a;->columnNumber:I

    return v0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lio/casper/android/e/a/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lio/casper/android/n/c/a/g$a;->dataType:Lio/casper/android/e/a/b;

    return-object v0
.end method
