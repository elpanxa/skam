.class public Lcom/bea/xml/stream/util/ElementTypeNames;
.super Ljava/lang/Object;
.source "ElementTypeNames.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 54
    const-string v0, "START_ELEMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "SPACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x6

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "END_ELEMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x2

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "PROCESSING_INSTRUCTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x3

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "CHARACTERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const/4 v0, 0x4

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "COMMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    const/4 v0, 0x5

    goto :goto_0

    .line 66
    :cond_5
    const-string v0, "START_DOCUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    const/4 v0, 0x7

    goto :goto_0

    .line 68
    :cond_6
    const-string v0, "END_DOCUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    const/16 v0, 0x8

    goto :goto_0

    .line 70
    :cond_7
    const-string v0, "ATTRIBUTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    const/16 v0, 0xa

    goto :goto_0

    .line 72
    :cond_8
    const-string v0, "DTD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 73
    const/16 v0, 0xb

    goto :goto_0

    .line 74
    :cond_9
    const-string v0, "CDATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    const/16 v0, 0xc

    goto :goto_0

    .line 76
    :cond_a
    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    const/16 v0, 0xd

    goto :goto_0

    .line 78
    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getEventTypeString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 50
    const-string v0, "UNKNOWN_EVENT_TYPE"

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    const-string v0, "START_ELEMENT"

    goto :goto_0

    .line 26
    :pswitch_1
    const-string v0, "END_ELEMENT"

    goto :goto_0

    .line 28
    :pswitch_2
    const-string v0, "PROCESSING_INSTRUCTION"

    goto :goto_0

    .line 30
    :pswitch_3
    const-string v0, "CHARACTERS"

    goto :goto_0

    .line 32
    :pswitch_4
    const-string v0, "SPACE"

    goto :goto_0

    .line 34
    :pswitch_5
    const-string v0, "COMMENT"

    goto :goto_0

    .line 36
    :pswitch_6
    const-string v0, "START_DOCUMENT"

    goto :goto_0

    .line 38
    :pswitch_7
    const-string v0, "END_DOCUMENT"

    goto :goto_0

    .line 40
    :pswitch_8
    const-string v0, "ENTITY_REFERENCE"

    goto :goto_0

    .line 42
    :pswitch_9
    const-string v0, "ATTRIBUTE"

    goto :goto_0

    .line 44
    :pswitch_a
    const-string v0, "DTD"

    goto :goto_0

    .line 46
    :pswitch_b
    const-string v0, "CDATA"

    goto :goto_0

    .line 48
    :pswitch_c
    const-string v0, "NAMESPACE"

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
