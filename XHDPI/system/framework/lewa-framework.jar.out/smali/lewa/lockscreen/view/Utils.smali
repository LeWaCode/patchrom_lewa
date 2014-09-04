.class public Llewa/lockscreen/view/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/Utils$Point;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D
    .locals 21
    .parameter "point1"
    .parameter "point2"
    .parameter "flag"

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-wide v7, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 56
    .local v7, p1_x:D
    move-object/from16 v0, p1

    iget-wide v11, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 58
    .local v11, p2_x:D
    sub-double v5, v7, v11

    .line 60
    .local v5, p1_p2_x:D
    move-object/from16 v0, p0

    iget-wide v9, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 61
    .local v9, p1_y:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 63
    .local v13, p2_y:D
    sub-double v1, v9, v13

    .line 65
    .local v1, P1_p2_y:D
    mul-double v15, v5, v5

    .line 66
    .local v15, x_square:D
    mul-double v17, v1, v1

    .line 69
    .local v17, y_square:D
    if-eqz p2, :cond_0

    .line 72
    add-double v19, v15, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 77
    .local v3, d8:D
    :goto_0
    return-wide v3

    .line 75
    .end local v3           #d8:D
    :cond_0
    add-double v3, v15, v17

    .restart local v3       #d8:D
    goto :goto_0
.end method

.method public static asserts(Z)V
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "assert error"

    invoke-static {p0, v0}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .parameter "flag"
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    const-string v0, "Utils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"
    .parameter "obj1"

    .prologue
    .line 136
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .parameter "element"
    .parameter "attriName"
    .parameter "defaultValue"

    .prologue
    .line 127
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 129
    .end local p2
    :goto_0
    return p2

    .line 128
    .restart local p2
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 5
    .parameter "element"
    .parameter "numberWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, width:I
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    return v2

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, numberformatexception:Ljava/lang/NumberFormatException;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 117
    .local v0, aobj:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 118
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 119
    new-instance v3, Llewa/lockscreen/view/DomParseException;

    const-string v4, "fail to get attribute name: %s of Element %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7
    .parameter "element"
    .parameter "tagName"

    .prologue
    .line 92
    if-nez p0, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 97
    .local v4, nodelist:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .line 99
    .local v0, childElement:Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 100
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 101
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 102
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v3

    .line 103
    check-cast v0, Lorg/w3c/dom/Element;

    .line 104
    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static pointProjectionOnSegment(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)Llewa/lockscreen/view/Utils$Point;
    .locals 30
    .parameter "point"
    .parameter "point1"
    .parameter "point2"
    .parameter "flag"

    .prologue
    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llewa/lockscreen/view/Utils$Point;->minus(Llewa/lockscreen/view/Utils$Point;)Llewa/lockscreen/view/Utils$Point;

    move-result-object v25

    .line 148
    .local v25, point3:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llewa/lockscreen/view/Utils$Point;->minus(Llewa/lockscreen/view/Utils$Point;)Llewa/lockscreen/view/Utils$Point;

    move-result-object v26

    .line 149
    .local v26, point4:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, v25

    iget-wide v3, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 150
    .local v3, d:D
    move-object/from16 v0, v26

    iget-wide v5, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    .line 151
    .local v5, d1:D
    mul-double v9, v3, v5

    .line 152
    .local v9, d2:D
    move-object/from16 v0, v25

    iget-wide v11, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 153
    .local v11, d3:D
    move-object/from16 v0, v26

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    .line 154
    .local v13, d4:D
    mul-double v15, v11, v13

    .line 155
    .local v15, d5:D
    add-double v17, v9, v15

    .line 156
    .local v17, d6:D
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Utils;->Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D

    move-result-wide v19

    .line 157
    .local v19, d7:D
    div-double v21, v17, v19

    .line 158
    .local v21, d8:D
    const-wide/16 v28, 0x0

    cmpl-double v28, v21, v28

    if-ltz v28, :cond_0

    const-wide/high16 v28, 0x3ff0

    cmpg-double v28, v21, v28

    if-gtz v28, :cond_0

    .line 159
    move-object/from16 v0, v25

    iget-wide v0, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    move-wide/from16 v28, v0

    mul-double v23, v28, v21

    .line 160
    .local v23, d9:D
    move-object/from16 v0, v25

    iget-wide v0, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    move-wide/from16 v28, v0

    mul-double v7, v28, v21

    .line 162
    .local v7, d10:D
    new-instance v27, Llewa/lockscreen/view/Utils$Point;

    move-object/from16 v0, v27

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2, v7, v8}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 164
    .local v27, point5:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llewa/lockscreen/view/Utils$Point;->Offset(Llewa/lockscreen/view/Utils$Point;)V

    .line 175
    .end local v7           #d10:D
    .end local v23           #d9:D
    .end local v27           #point5:Llewa/lockscreen/view/Utils$Point;
    :goto_0
    return-object v27

    .line 167
    :cond_0
    if-eqz p3, :cond_1

    .line 168
    const-wide/16 v28, 0x0

    cmpl-double v28, v21, v28

    if-ltz v28, :cond_1

    .line 169
    move-object/from16 p0, p1

    :cond_1
    move-object/from16 v27, p0

    .line 175
    goto :goto_0
.end method

.method public static runShellBat(Ljava/lang/String;)Z
    .locals 8
    .parameter "commond"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 181
    .local v4, runtime:Ljava/lang/Runtime;
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    .line 182
    .local v0, commonds:[Ljava/lang/String;
    const-string v7, "sh"

    aput-object v7, v0, v6

    .line 183
    const-string v7, "-c"

    aput-object v7, v0, v5

    .line 184
    const/4 v7, 0x2

    aput-object p0, v0, v7

    .line 186
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 187
    .local v3, process:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 188
    .local v2, exitValue:I
    if-eqz v2, :cond_0

    .line 196
    .end local v2           #exitValue:I
    .end local v3           #process:Ljava/lang/Process;
    :goto_0
    return v5

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    move v5, v6

    .line 196
    goto :goto_0

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
