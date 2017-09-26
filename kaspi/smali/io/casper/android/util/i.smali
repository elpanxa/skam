.class public Lio/casper/android/util/i;
.super Ljava/lang/Object;
.source "SnapUtils.java"


# direct methods
.method public static a(Lio/casper/android/n/a/c/b/f;)I
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/f;->e()Lio/casper/android/n/a/c/b/g;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/g;->a()Ljava/util/List;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/w;

    .line 43
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 46
    goto :goto_0

    :cond_0
    move v0, v1

    .line 51
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lio/casper/android/n/a/c/b/w;Z)I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    if-eqz p1, :cond_0

    const v0, 0x7f020156

    .line 117
    :goto_0
    return v0

    .line 62
    :cond_0
    const v0, 0x7f020155

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    if-eqz p1, :cond_2

    const v0, 0x7f020154

    goto :goto_0

    :cond_2
    const v0, 0x7f020153

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    if-eqz p1, :cond_4

    const v0, 0x7f020152

    goto :goto_0

    :cond_4
    const v0, 0x7f020151

    goto :goto_0

    .line 71
    :cond_5
    if-eqz p1, :cond_6

    const v0, 0x7f02015a

    goto :goto_0

    :cond_6
    const v0, 0x7f020159

    goto :goto_0

    .line 76
    :cond_7
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->q()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 77
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    if-eqz p1, :cond_8

    const v0, 0x7f020162

    goto :goto_0

    :cond_8
    const v0, 0x7f020161

    goto :goto_0

    .line 80
    :cond_9
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    if-eqz p1, :cond_a

    const v0, 0x7f020160

    goto :goto_0

    :cond_a
    const v0, 0x7f02015f

    goto :goto_0

    .line 83
    :cond_b
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    if-eqz p1, :cond_c

    const v0, 0x7f02015e

    goto :goto_0

    :cond_c
    const v0, 0x7f02015d

    goto :goto_0

    .line 87
    :cond_d
    if-eqz p1, :cond_e

    const v0, 0x7f020166

    goto :goto_0

    :cond_e
    const v0, 0x7f020165

    goto :goto_0

    .line 96
    :cond_f
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->p()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    if-eqz p1, :cond_10

    const v0, 0x7f020150

    goto :goto_0

    :cond_10
    const v0, 0x7f02014f

    goto/16 :goto_0

    .line 101
    :cond_11
    if-eqz p1, :cond_12

    const v0, 0x7f020158

    goto/16 :goto_0

    :cond_12
    const v0, 0x7f020157

    goto/16 :goto_0

    .line 106
    :cond_13
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->q()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 107
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    if-eqz p1, :cond_14

    const v0, 0x7f02015c

    goto/16 :goto_0

    :cond_14
    const v0, 0x7f02015b

    goto/16 :goto_0

    .line 111
    :cond_15
    if-eqz p1, :cond_16

    const v0, 0x7f020164

    goto/16 :goto_0

    :cond_16
    const v0, 0x7f020163

    goto/16 :goto_0

    .line 117
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a(Lio/casper/android/e/b/b;Lio/casper/android/n/a/c/b/f;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/f;->a()Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lio/casper/android/n/a/c/b/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/w;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
