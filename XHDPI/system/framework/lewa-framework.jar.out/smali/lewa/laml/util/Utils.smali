.class public Llewa/laml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/util/Utils$XmlTraverseListener;,
        Llewa/laml/util/Utils$Point;,
        Llewa/laml/util/Utils$GetChildWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "sqr"

    .prologue
    .line 57
    iget-wide v4, p0, Llewa/laml/util/Utils$Point;->x:D

    iget-wide v6, p1, Llewa/laml/util/Utils$Point;->x:D

    sub-double v0, v4, v6

    .line 58
    .local v0, x:D
    iget-wide v4, p0, Llewa/laml/util/Utils$Point;->y:D

    iget-wide v6, p1, Llewa/laml/util/Utils$Point;->y:D

    sub-double v2, v4, v6

    .line 59
    .local v2, y:D
    if-eqz p2, :cond_0

    .line 60
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 62
    :goto_0
    return-wide v4

    :cond_0
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"
    .parameter "suffix"

    .prologue
    .line 66
    const-string v0, "_"

    invoke-static {p0, v0, p1}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "src"
    .parameter "separator"
    .parameter "suffix"

    .prologue
    .line 70
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 71
    .local v0, dot:I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static asserts(Z)V
    .locals 1
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "assert error"

    invoke-static {p0, v0}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Llewa/laml/ScreenElementLoadException;

    invoke-direct {v0, p1}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 87
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, str:Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 94
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 99
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 101
    .end local p2
    :goto_0
    return p2

    .line 100
    .restart local p2
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Llewa/laml/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 117
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 119
    .end local p2
    :goto_0
    return p2

    .line 118
    .restart local p2
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Llewa/laml/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 135
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 137
    .end local p2
    :goto_0
    return-wide p2

    .line 136
    .restart local p2
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Llewa/laml/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7
    .parameter "ele"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 152
    if-nez p0, :cond_0

    move-object v2, v4

    .line 162
    :goto_0
    return-object v2

    .line 154
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 155
    .local v3, nl:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 156
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 157
    .local v2, item:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    check-cast v2, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #item:Lorg/w3c/dom/Node;
    :cond_2
    move-object v2, v4

    .line 162
    goto :goto_0
.end method

.method public static getVariableNumber(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)D
    .locals 3
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 166
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 167
    .local v0, tmp:Llewa/laml/util/IndexedNumberVariable;
    invoke-virtual {v0}, Llewa/laml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;)D
    .locals 2
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Llewa/laml/util/Utils;->getVariableNumber(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 175
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 176
    .local v0, tmp:Llewa/laml/util/IndexedStringVariable;
    invoke-virtual {v0}, Llewa/laml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVariableString(Ljava/lang/String;Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Llewa/laml/util/Utils;->getVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mixAlpha(II)I
    .locals 2
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/16 v0, 0xff

    .line 184
    if-ge p0, v0, :cond_1

    .line 185
    if-lt p1, v0, :cond_0

    .line 190
    .end local p0
    :goto_0
    return p0

    .line 188
    .restart local p0
    :cond_0
    mul-int v0, p0, p1

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, p1

    .line 190
    goto :goto_0
.end method

.method public static pointProjectionOnSegment(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)Llewa/laml/util/Utils$Point;
    .locals 13
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "nearestEnd"

    .prologue
    .line 195
    invoke-virtual {p1, p0}, Llewa/laml/util/Utils$Point;->minus(Llewa/laml/util/Utils$Point;)Llewa/laml/util/Utils$Point;

    move-result-object v0

    .line 196
    .local v0, AB:Llewa/laml/util/Utils$Point;
    invoke-virtual {p2, p0}, Llewa/laml/util/Utils$Point;->minus(Llewa/laml/util/Utils$Point;)Llewa/laml/util/Utils$Point;

    move-result-object v1

    .line 197
    .local v1, AC:Llewa/laml/util/Utils$Point;
    iget-wide v7, v0, Llewa/laml/util/Utils$Point;->x:D

    iget-wide v9, v1, Llewa/laml/util/Utils$Point;->x:D

    mul-double/2addr v7, v9

    iget-wide v9, v0, Llewa/laml/util/Utils$Point;->y:D

    iget-wide v11, v1, Llewa/laml/util/Utils$Point;->y:D

    mul-double/2addr v9, v11

    add-double v5, v7, v9

    .line 198
    .local v5, r:D
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Llewa/laml/util/Utils;->Dist(Llewa/laml/util/Utils$Point;Llewa/laml/util/Utils$Point;Z)D

    move-result-wide v7

    div-double v3, v5, v7

    .line 199
    .local v3, d:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_0

    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v3, v7

    if-gtz v7, :cond_0

    .line 200
    move-object v2, v0

    .line 201
    .local v2, D:Llewa/laml/util/Utils$Point;
    iget-wide v7, v2, Llewa/laml/util/Utils$Point;->x:D

    mul-double/2addr v7, v3

    iput-wide v7, v2, Llewa/laml/util/Utils$Point;->x:D

    .line 202
    iget-wide v7, v2, Llewa/laml/util/Utils$Point;->y:D

    mul-double/2addr v7, v3

    iput-wide v7, v2, Llewa/laml/util/Utils$Point;->y:D

    .line 203
    invoke-virtual {v2, p0}, Llewa/laml/util/Utils$Point;->Offset(Llewa/laml/util/Utils$Point;)V

    .line 210
    .end local v2           #D:Llewa/laml/util/Utils$Point;
    :goto_0
    return-object v2

    .line 206
    :cond_0
    if-nez p3, :cond_2

    .line 207
    const/4 p0, 0x0

    :cond_1
    :goto_1
    move-object v2, p0

    .line 210
    goto :goto_0

    .line 208
    :cond_2
    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_1

    .line 209
    move-object p0, p1

    goto :goto_1
.end method

.method public static putVariableNumber(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"
    .parameter "value"

    .prologue
    .line 215
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 216
    .local v0, tmp:Llewa/laml/util/IndexedNumberVariable;
    invoke-virtual {v0, p3}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 217
    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .parameter "property"
    .parameter "vars"
    .parameter "value"

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Llewa/laml/util/Utils;->putVariableNumber(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/Double;)V

    .line 221
    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"
    .parameter "str"

    .prologue
    .line 224
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 225
    .local v0, tmp:Llewa/laml/util/IndexedStringVariable;
    invoke-virtual {v0, p3}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "vars"
    .parameter "str"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Llewa/laml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 1
    .parameter "value"
    .parameter "def"

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 238
    .end local p1
    :goto_0
    return-wide p1

    .line 236
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V
    .locals 6
    .parameter "parent"
    .parameter "tag"
    .parameter "l"

    .prologue
    .line 243
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 244
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 245
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 246
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    :cond_0
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #node:Lorg/w3c/dom/Node;
    invoke-interface {p2, v3}, Llewa/laml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_2
    return-void
.end method
