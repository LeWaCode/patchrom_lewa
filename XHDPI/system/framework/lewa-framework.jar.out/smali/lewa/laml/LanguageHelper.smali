.class public Llewa/laml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# static fields
.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Llewa/laml/ResourceManager;Llewa/laml/data/Variables;)Z
    .locals 8
    .parameter "locale"
    .parameter "resourceManager"
    .parameter "variables"

    .prologue
    const/4 v5, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    .local v4, memoryfile:Landroid/os/MemoryFile;
    if-eqz p0, :cond_0

    .line 36
    const-string v6, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Llewa/laml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    const-string v6, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Llewa/laml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v4

    .line 42
    :cond_0
    if-nez v4, :cond_2

    .line 43
    const-string v6, "strings/strings.xml"

    invoke-virtual {p1, v6}, Llewa/laml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    const-string v6, "LanguageHelper"

    const-string v7, "no available string resources to load."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    :goto_0
    return v5

    .line 50
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 51
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 52
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 53
    .local v1, document:Lorg/w3c/dom/Document;
    invoke-static {v1, p2}, Llewa/laml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Llewa/laml/data/Variables;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 57
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    goto :goto_0

    .line 54
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #document:Lorg/w3c/dom/Document;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "LanguageHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    goto :goto_0

    .line 57
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    :cond_3
    throw v5
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Llewa/laml/data/Variables;)Z
    .locals 9
    .parameter "doc"
    .parameter "variables"

    .prologue
    const/4 v7, 0x0

    .line 64
    const-string v8, "strings"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 65
    .local v3, rootsList:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-gtz v8, :cond_0

    .line 76
    :goto_0
    return v7

    .line 67
    :cond_0
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, node:Lorg/w3c/dom/Node;
    move-object v2, v1

    .line 68
    check-cast v2, Lorg/w3c/dom/Element;

    .line 69
    .local v2, root:Lorg/w3c/dom/Element;
    const-string v7, "string"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 70
    .local v5, stringList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 71
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 72
    .local v4, string:Lorg/w3c/dom/Element;
    new-instance v6, Llewa/laml/util/IndexedStringVariable;

    const-string v7, "name"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 74
    .local v6, stringVar:Llewa/laml/util/IndexedStringVariable;
    const-string v7, "value"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v4           #string:Lorg/w3c/dom/Element;
    .end local v6           #stringVar:Llewa/laml/util/IndexedStringVariable;
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method
