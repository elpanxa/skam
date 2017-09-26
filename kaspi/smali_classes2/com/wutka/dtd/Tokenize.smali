.class Lcom/wutka/dtd/Tokenize;
.super Ljava/lang/Object;
.source "Tokenize.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpAttribute(Lcom/wutka/dtd/DTDAttribute;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    iget-object v2, v2, Lcom/wutka/dtd/DTDDecl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 254
    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDEnumeration;

    if-eqz v0, :cond_6

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDEnumeration;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDEnumeration;->getItems()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 223
    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_5

    .line 225
    if-lez v0, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 226
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDNotationList;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notation ("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDNotationList;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDNotationList;->getItems()[Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 237
    if-lez v1, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    :cond_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    if-nez p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    instance-of v0, p0, Lcom/wutka/dtd/DTDAny;

    if-eqz v0, :cond_3

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Any"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_f

    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    instance-of v0, p0, Lcom/wutka/dtd/DTDEmpty;

    if-eqz v0, :cond_4

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    instance-of v0, p0, Lcom/wutka/dtd/DTDName;

    if-eqz v0, :cond_5

    .line 154
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v0, p0

    check-cast v0, Lcom/wutka/dtd/DTDName;

    iget-object v0, v0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_5
    instance-of v0, p0, Lcom/wutka/dtd/DTDChoice;

    if-eqz v0, :cond_8

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, p0

    .line 159
    check-cast v0, Lcom/wutka/dtd/DTDChoice;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDChoice;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v2

    move v0, v1

    .line 161
    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_7

    .line 163
    if-lez v0, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 164
    :cond_6
    aget-object v1, v2, v0

    invoke-static {v1}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_8
    instance-of v0, p0, Lcom/wutka/dtd/DTDSequence;

    if-eqz v0, :cond_b

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, p0

    .line 171
    check-cast v0, Lcom/wutka/dtd/DTDSequence;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDSequence;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v0

    .line 173
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 175
    if-lez v1, :cond_9

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 176
    :cond_9
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 178
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_b
    instance-of v0, p0, Lcom/wutka/dtd/DTDMixed;

    if-eqz v0, :cond_e

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, p0

    .line 183
    check-cast v0, Lcom/wutka/dtd/DTDMixed;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDMixed;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v0

    .line 185
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 187
    if-lez v1, :cond_c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    :cond_c
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 190
    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_e
    instance-of v0, p0, Lcom/wutka/dtd/DTDPCData;

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#PCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    :cond_f
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_10

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_10
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_0

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 19
    .line 22
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 24
    new-instance v0, Lcom/wutka/dtd/DTDParser;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/net/URL;Z)V

    .line 32
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTDParser;->parse(Z)Lcom/wutka/dtd/DTD;

    move-result-object v2

    .line 34
    iget-object v0, v2, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Root element is probably: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, v2, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    iget-object v3, v3, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, v2, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 42
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDElement;

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   Content: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    iget-object v3, v0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    invoke-static {v3}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 49
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 51
    iget-object v3, v0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 53
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   Attributes: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget-object v0, v0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 55
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "        "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttribute;

    .line 59
    invoke-static {v0}, Lcom/wutka/dtd/Tokenize;->dumpAttribute(Lcom/wutka/dtd/DTDAttribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 138
    :cond_2
    return-void

    .line 28
    :cond_3
    :try_start_1
    new-instance v0, Lcom/wutka/dtd/DTDParser;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/io/File;Z)V

    goto/16 :goto_0

    .line 61
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_1

    .line 65
    :cond_5
    iget-object v0, v2, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 67
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    .line 71
    iget-boolean v1, v0, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Parsed "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    :cond_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Entity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 77
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "    Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_8
    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v1, :cond_9

    .line 82
    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    instance-of v1, v1, Lcom/wutka/dtd/DTDSystem;

    if-eqz v1, :cond_a

    .line 84
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "    System: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v5, v5, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "    NDATA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v0, v0, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 89
    :cond_a
    iget-object v1, v0, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    check-cast v1, Lcom/wutka/dtd/DTDPublic;

    .line 91
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "    Public: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v1, v1, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 101
    :cond_b
    iget-object v0, v2, Lcom/wutka/dtd/DTD;->notations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 103
    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDNotation;

    .line 107
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Notation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v2, :cond_c

    .line 111
    iget-object v2, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    instance-of v2, v2, Lcom/wutka/dtd/DTDSystem;

    if-eqz v2, :cond_d

    .line 113
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "    System: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v0, v0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 118
    :cond_d
    iget-object v0, v0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    check-cast v0, Lcom/wutka/dtd/DTDPublic;

    .line 120
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "    Public: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    iget-object v2, v0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 124
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, v0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 128
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method
