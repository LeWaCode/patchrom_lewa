.class public Lcom/lewa/bi/common/gson/SubclassAdapter;
.super Ljava/lang/Object;
.source "SubclassAdapter.java"

# interfaces
.implements Lcom/lewa/gson/JsonSerializer;
.implements Lcom/lewa/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/gson/JsonSerializer",
        "<TT;>;",
        "Lcom/lewa/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final defaultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fallbackType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private logger:Lcom/lewa/bi/common/util/Logger;

.field private final packageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "packageNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/bi/common/gson/SubclassAdapter;,"Lcom/lewa/bi/common/gson/SubclassAdapter<TT;>;"
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v9, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->types:Ljava/util/Map;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/lewa/bi/common/util/LoggerFactory;->getLogger(Ljava/lang/Object;)Lcom/lewa/bi/common/util/Logger;

    move-result-object v8

    iput-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->logger:Lcom/lewa/bi/common/util/Logger;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    .line 58
    .local v4, modifiers:I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 59
    const-class v8, Lcom/lewa/bi/common/data/InheritanceMeta;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/lewa/bi/common/data/InheritanceMeta;

    .line 60
    .local v2, inheritanceMeta:Lcom/lewa/bi/common/data/InheritanceMeta;
    if-nez v2, :cond_2

    .line 61
    iput-object v9, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->defaultType:Ljava/lang/Class;

    .line 62
    iput-object v9, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->fallbackType:Ljava/lang/Class;

    .line 68
    :goto_1
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    iput-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->packageNames:Ljava/util/Set;

    .line 69
    iget-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->packageNames:Ljava/util/Set;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v5, v0, v1

    .line 71
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->packageNames:Ljava/util/Set;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #inheritanceMeta:Lcom/lewa/bi/common/data/InheritanceMeta;
    .end local v3           #len$:I
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 64
    .restart local v2       #inheritanceMeta:Lcom/lewa/bi/common/data/InheritanceMeta;
    :cond_2
    invoke-interface {v2}, Lcom/lewa/bi/common/data/InheritanceMeta;->defaultType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/lewa/bi/common/gson/NullUtil;->normalizeNullType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->defaultType:Ljava/lang/Class;

    .line 65
    invoke-interface {v2}, Lcom/lewa/bi/common/data/InheritanceMeta;->fallbackType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/lewa/bi/common/gson/NullUtil;->normalizeNullType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->fallbackType:Ljava/lang/Class;

    goto :goto_1

    .line 74
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    :cond_3
    const-class v8, Lcom/lewa/bi/common/data/Subclasses;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/lewa/bi/common/data/Subclasses;

    .line 75
    .local v7, subclasses:Lcom/lewa/bi/common/data/Subclasses;
    if-eqz v7, :cond_4

    .line 76
    invoke-interface {v7}, Lcom/lewa/bi/common/data/Subclasses;->value()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v6, v0, v1

    .line 77
    .local v6, subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    invoke-static {v8}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 78
    iget-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->types:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 81
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v6           #subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method

.method public static varargs create(Ljava/lang/Class;[Ljava/lang/String;)Lcom/lewa/bi/common/gson/SubclassAdapter;
    .locals 1
    .parameter
    .parameter "packageNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/lewa/bi/common/gson/SubclassAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, baseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/lewa/bi/common/gson/SubclassAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lewa/bi/common/gson/SubclassAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v0
.end method

.method private getType(Lcom/lewa/gson/JsonElement;)Ljava/lang/Class;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/JsonElement;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/lewa/bi/common/gson/SubclassAdapter;,"Lcom/lewa/bi/common/gson/SubclassAdapter<TT;>;"
    move-object v2, p1

    check-cast v2, Lcom/lewa/gson/JsonObject;

    .line 98
    .local v2, jsonObject:Lcom/lewa/gson/JsonObject;
    const-string v6, "_TYPE"

    invoke-virtual {v2, v6}, Lcom/lewa/gson/JsonObject;->get(Ljava/lang/String;)Lcom/lewa/gson/JsonElement;

    move-result-object v1

    .line 99
    .local v1, jsonElement:Lcom/lewa/gson/JsonElement;
    if-nez v1, :cond_1

    .line 101
    iget-object v5, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->defaultType:Ljava/lang/Class;

    .line 117
    :cond_0
    :goto_0
    return-object v5

    .line 103
    :cond_1
    invoke-virtual {v1}, Lcom/lewa/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->types:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 105
    .local v5, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v5, :cond_0

    .line 108
    iget-object v6, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->packageNames:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    .local v4, packageName:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 111
    iget-object v6, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->types:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v6

    goto :goto_1

    .line 116
    .end local v4           #packageName:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subtype "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "not exists, use fallback type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->fallbackType:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/bi/common/util/Logger;->warn(Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->fallbackType:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/lewa/bi/common/gson/SubclassAdapter;,"Lcom/lewa/bi/common/gson/SubclassAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/lewa/bi/common/gson/SubclassAdapter;->getType(Lcom/lewa/gson/JsonElement;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    .line 91
    :cond_0
    invoke-interface {p3, p1, v0}, Lcom/lewa/gson/JsonDeserializationContext;->deserialize(Lcom/lewa/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, result:Ljava/lang/Object;
    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/lewa/gson/JsonSerializationContext;)Lcom/lewa/gson/JsonElement;
    .locals 5
    .parameter
    .parameter "typeOfSrc"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/lewa/gson/JsonSerializationContext;",
            ")",
            "Lcom/lewa/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/lewa/bi/common/gson/SubclassAdapter;,"Lcom/lewa/bi/common/gson/SubclassAdapter<TT;>;"
    .local p1, src:Ljava/lang/Object;,"TT;"
    invoke-interface {p3, p1}, Lcom/lewa/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/lewa/gson/JsonElement;

    move-result-object v0

    .line 123
    .local v0, result:Lcom/lewa/gson/JsonElement;
    iget-object v1, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->defaultType:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lewa/bi/common/gson/SubclassAdapter;->defaultType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    .line 125
    check-cast v1, Lcom/lewa/gson/JsonObject;

    const-string v2, "_TYPE"

    new-instance v3, Lcom/lewa/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/lewa/gson/JsonObject;->add(Ljava/lang/String;Lcom/lewa/gson/JsonElement;)V

    .line 128
    :cond_1
    return-object v0
.end method
