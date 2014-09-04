.class public Llewa/laml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/util/ConfigFile$Variable;,
        Llewa/laml/util/ConfigFile$OnLoadElementListener;,
        Llewa/laml/util/ConfigFile$Gadget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/laml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/laml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method static synthetic access$000(Llewa/laml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 73
    const-string v0, "Gadgets"

    const-string v1, "Gadget"

    new-instance v2, Llewa/laml/util/ConfigFile$1;

    invoke-direct {v2, p0}, Llewa/laml/util/ConfigFile$1;-><init>(Llewa/laml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Llewa/laml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Llewa/laml/util/ConfigFile$OnLoadElementListener;)V

    .line 80
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Llewa/laml/util/ConfigFile$OnLoadElementListener;)V
    .locals 8
    .parameter "root"
    .parameter "listTag"
    .parameter "itemTag"
    .parameter "listener"

    .prologue
    .line 84
    invoke-static {p1, p2}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 85
    .local v2, element:Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 87
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 88
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 89
    .local v5, node:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 90
    check-cast v4, Lorg/w3c/dom/Element;

    .line 91
    .local v4, item:Lorg/w3c/dom/Element;
    invoke-interface {p4, v4}, Llewa/laml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 87
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0           #N:I
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    .end local v5           #node:Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 99
    const-string v0, "Tasks"

    const-string v1, "Intent"

    new-instance v2, Llewa/laml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Llewa/laml/util/ConfigFile$2;-><init>(Llewa/laml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Llewa/laml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Llewa/laml/util/ConfigFile$OnLoadElementListener;)V

    .line 104
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 107
    const-string v0, "Variables"

    const-string v1, "Variable"

    new-instance v2, Llewa/laml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Llewa/laml/util/ConfigFile$3;-><init>(Llewa/laml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Llewa/laml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Llewa/laml/util/ConfigFile$OnLoadElementListener;)V

    .line 113
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :cond_0
    iget-object v1, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/ConfigFile$Variable;

    .line 119
    .local v0, item:Llewa/laml/util/ConfigFile$Variable;
    if-nez v0, :cond_1

    .line 120
    new-instance v0, Llewa/laml/util/ConfigFile$Variable;

    .end local v0           #item:Llewa/laml/util/ConfigFile$Variable;
    invoke-direct {v0}, Llewa/laml/util/ConfigFile$Variable;-><init>()V

    .line 121
    .restart local v0       #item:Llewa/laml/util/ConfigFile$Variable;
    iput-object p1, v0, Llewa/laml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    iput-object p3, v0, Llewa/laml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 125
    iput-object p2, v0, Llewa/laml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 127
    .end local v0           #item:Llewa/laml/util/ConfigFile$Variable;
    :cond_2
    return-void
.end method

.method private writeGadgets(Ljava/io/FileWriter;)V
    .locals 10
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v3, "Gadgets"

    invoke-static {p1, v3, v7}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 133
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "path"

    aput-object v3, v2, v7

    const-string v3, "x"

    aput-object v3, v2, v6

    const-string v3, "y"

    aput-object v3, v2, v8

    .line 136
    .local v2, names:[Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/util/ConfigFile$Gadget;

    .line 137
    .local v1, item:Llewa/laml/util/ConfigFile$Gadget;
    const-string v3, "Gadget"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, v1, Llewa/laml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v5, v4, v7

    iget v5, v1, Llewa/laml/util/ConfigFile$Gadget;->x:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, v1, Llewa/laml/util/ConfigFile$Gadget;->y:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1, v3, v2, v4, v6}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 141
    .end local v1           #item:Llewa/laml/util/ConfigFile$Gadget;
    :cond_1
    const-string v3, "Gadgets"

    invoke-static {p1, v3, v6}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 149
    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .parameter "ignoreEmptyValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 162
    if-eqz p4, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 164
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 165
    const-string v1, "=\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 166
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 167
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    const-string v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private writeTasks(Ljava/io/FileWriter;)V
    .locals 12
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v3, "Tasks"

    invoke-static {p1, v3, v8}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 177
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    sget-object v3, Llewa/laml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Llewa/laml/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Llewa/laml/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v3, v2, v9

    sget-object v3, Llewa/laml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v3, v2, v10

    sget-object v3, Llewa/laml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v3, v2, v11

    const/4 v3, 0x5

    sget-object v4, Llewa/laml/util/Task;->TAG_CLASS:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Llewa/laml/util/Task;->TAG_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 181
    .local v2, names:[Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/util/Task;

    .line 182
    .local v1, item:Llewa/laml/util/Task;
    const-string v3, "Intent"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v1, Llewa/laml/util/Task;->action:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Llewa/laml/util/Task;->type:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, v1, Llewa/laml/util/Task;->category:Ljava/lang/String;

    aput-object v5, v4, v10

    iget-object v5, v1, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    iget-object v6, v1, Llewa/laml/util/Task;->className:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, v1, Llewa/laml/util/Task;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p1, v3, v2, v4, v7}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 187
    .end local v1           #item:Llewa/laml/util/Task;
    :cond_1
    const-string v3, "Tasks"

    invoke-static {p1, v3, v7}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeVariables(Ljava/io/FileWriter;)V
    .locals 10
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v3, "Variables"

    invoke-static {p1, v3, v6}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 194
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "type"

    aput-object v3, v2, v7

    const-string v3, "value"

    aput-object v3, v2, v8

    .line 197
    .local v2, names:[Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/util/ConfigFile$Variable;

    .line 198
    .local v1, item:Llewa/laml/util/ConfigFile$Variable;
    const-string v3, "Variable"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, v1, Llewa/laml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Llewa/laml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Llewa/laml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {p1, v3, v2, v4}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 202
    .end local v1           #item:Llewa/laml/util/ConfigFile$Variable;
    :cond_1
    const-string v3, "Variables"

    invoke-static {p1, v3, v7}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Llewa/laml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Llewa/laml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 210
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Llewa/laml/util/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 218
    iget-object v1, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/ConfigFile$Variable;

    .line 219
    .local v0, item:Llewa/laml/util/ConfigFile$Variable;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 222
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Llewa/laml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Llewa/laml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 230
    iput-object p1, p0, Llewa/laml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Llewa/laml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v4, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 234
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 237
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 239
    .local v2, root:Lorg/w3c/dom/Element;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-direct {p0, v2}, Llewa/laml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 241
    invoke-direct {p0, v2}, Llewa/laml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 242
    invoke-direct {p0, v2}, Llewa/laml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const/4 v3, 0x1

    goto :goto_0

    .line 245
    .end local v1           #file:Ljava/io/File;
    .end local v2           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ConfigFile"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveGadget(Llewa/laml/util/ConfigFile$Gadget;I)V
    .locals 1
    .parameter "g"
    .parameter "position"

    .prologue
    .line 252
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    :cond_0
    return-void
.end method

.method public putGadget(Llewa/laml/util/ConfigFile$Gadget;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 263
    invoke-static {p2, p3}, Llewa/laml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Llewa/laml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 267
    const-string v0, "number"

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 271
    const-string v0, "string"

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public putTask(Llewa/laml/util/Task;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public removeGadget(Llewa/laml/util/ConfigFile$Gadget;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 281
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public save()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Llewa/laml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Llewa/laml/util/ConfigFile;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, fw:Ljava/io/FileWriter;
    const-string v4, "Config"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 292
    invoke-direct {p0, v1}, Llewa/laml/util/ConfigFile;->writeVariables(Ljava/io/FileWriter;)V

    .line 293
    invoke-direct {p0, v1}, Llewa/laml/util/ConfigFile;->writeTasks(Ljava/io/FileWriter;)V

    .line 294
    invoke-direct {p0, v1}, Llewa/laml/util/ConfigFile;->writeGadgets(Ljava/io/FileWriter;)V

    .line 295
    const-string v4, "Config"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Llewa/laml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 297
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 298
    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {p1, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1           #fw:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ConfigFile"

    const-string v4, "save"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 301
    goto :goto_0
.end method
