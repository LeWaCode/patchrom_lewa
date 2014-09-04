.class public Llewa/laml/data/FileBinder;
.super Llewa/laml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Llewa/laml/util/IndexedNumberVariable;

.field protected mDirFormatter:Llewa/laml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 39
    invoke-direct {p0, p2}, Llewa/laml/data/VariableBinder;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 40
    invoke-direct {p0, p1}, Llewa/laml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 41
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v1, "FileBinder"

    const-string v2, "FileBinder node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/data/FileBinder;->mName:Ljava/lang/String;

    .line 49
    const-string v1, "filter"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, filter:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Llewa/laml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 51
    new-instance v1, Llewa/laml/util/TextFormatter;

    const-string v2, "dir"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dirExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;Llewa/laml/data/Expression;)V

    iput-object v1, p0, Llewa/laml/data/FileBinder;->mDirFormatter:Llewa/laml/util/TextFormatter;

    .line 53
    iget-object v1, p0, Llewa/laml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Llewa/laml/util/IndexedNumberVariable;

    iget-object v2, p0, Llewa/laml/data/FileBinder;->mName:Ljava/lang/String;

    const-string v3, "count"

    invoke-virtual {p0}, Llewa/laml/data/FileBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/data/FileBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Llewa/laml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 59
    const-string v0, "Variable"

    new-instance v1, Llewa/laml/data/FileBinder$1;

    invoke-direct {v1, p0}, Llewa/laml/data/FileBinder$1;-><init>(Llewa/laml/data/FileBinder;)V

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V

    .line 65
    return-void
.end method

.method private updateVariables()V
    .locals 7

    .prologue
    .line 68
    iget-object v4, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 69
    .local v0, count:I
    :goto_0
    iget-object v4, p0, Llewa/laml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/laml/data/FileBinder$Variable;

    .line 70
    .local v3, v:Llewa/laml/data/FileBinder$Variable;
    iget-object v4, v3, Llewa/laml/data/FileBinder$Variable;->mIndex:Llewa/laml/data/Expression;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, v3, Llewa/laml/data/FileBinder$Variable;->mIndex:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/data/FileBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v4, v5}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    double-to-int v2, v4

    .line 72
    .local v2, index:I
    iget-object v5, v3, Llewa/laml/data/FileBinder$Variable;->mVar:Llewa/laml/util/IndexedStringVariable;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v0           #count:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #v:Llewa/laml/data/FileBinder$Variable;
    :cond_1
    iget-object v4, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    goto :goto_0

    .line 72
    .restart local v0       #count:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #v:Llewa/laml/data/FileBinder$Variable;
    :cond_2
    iget-object v4, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v6, v2, v0

    aget-object v4, v4, v6

    goto :goto_2

    .line 75
    .end local v2           #index:I
    .end local v3           #v:Llewa/laml/data/FileBinder$Variable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Llewa/laml/data/FileBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Llewa/laml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Llewa/laml/data/FileBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Llewa/laml/data/FileBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->init()V

    .line 87
    invoke-virtual {p0}, Llewa/laml/data/FileBinder;->refresh()V

    .line 88
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 91
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->refresh()V

    .line 92
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Llewa/laml/data/FileBinder;->mDirFormatter:Llewa/laml/util/TextFormatter;

    invoke-virtual {p0}, Llewa/laml/data/FileBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v2, v3}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, dir:Ljava/io/File;
    iget-object v2, p0, Llewa/laml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 94
    iget-object v2, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 95
    .local v0, count:I
    :goto_1
    iget-object v2, p0, Llewa/laml/data/FileBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Llewa/laml/data/FileBinder;->mCountVar:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 97
    :cond_0
    const-string v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Llewa/laml/data/FileBinder;->updateVariables()V

    .line 99
    return-void

    .line 93
    .end local v0           #count:I
    :cond_1
    new-instance v2, Llewa/laml/util/FilenameExtFilter;

    iget-object v3, p0, Llewa/laml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Llewa/laml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Llewa/laml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->tick()V

    .line 103
    invoke-direct {p0}, Llewa/laml/data/FileBinder;->updateVariables()V

    .line 104
    return-void
.end method
