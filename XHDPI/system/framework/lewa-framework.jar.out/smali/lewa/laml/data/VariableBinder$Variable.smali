.class public Llewa/laml/data/VariableBinder$Variable;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final STRING:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Variable"

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumberVar:Llewa/laml/util/IndexedNumberVariable;

.field public mStringVar:Llewa/laml/util/IndexedStringVariable;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Llewa/laml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Llewa/laml/data/VariableBinder$Variable;->parseType()V

    .line 82
    invoke-direct {p0, p3}, Llewa/laml/data/VariableBinder$Variable;->createVar(Llewa/laml/data/Variables;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V
    .locals 2
    .parameter "node"
    .parameter "var"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "Variable"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 91
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Llewa/laml/data/VariableBinder$Variable;->parseType()V

    .line 93
    invoke-direct {p0, p2}, Llewa/laml/data/VariableBinder$Variable;->createVar(Llewa/laml/data/Variables;)V

    .line 94
    invoke-virtual {p0, p1}, Llewa/laml/data/VariableBinder$Variable;->onLoad(Lorg/w3c/dom/Element;)V

    .line 96
    return-void
.end method

.method private createVar(Llewa/laml/data/Variables;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 99
    iget v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method public isNumber()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 111
    return-void
.end method

.method protected parseType()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 114
    const-string v0, "string"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "double"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput v2, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "float"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x5

    iput v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "int"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "integer"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "long"

    iget-object v1, p0, Llewa/laml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    goto :goto_0

    .line 125
    :cond_5
    iput v2, p0, Llewa/laml/data/VariableBinder$Variable;->mType:I

    goto :goto_0
.end method

.method public setValue(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 130
    iget-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 132
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 135
    iget-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Llewa/laml/data/VariableBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, p1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method
