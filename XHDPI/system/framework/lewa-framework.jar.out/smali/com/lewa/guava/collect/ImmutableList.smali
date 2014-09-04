.class public abstract Lcom/lewa/guava/collect/ImmutableList;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableList$Builder;,
        Lcom/lewa/guava/collect/ImmutableList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/lewa/guava/collect/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/lewa/guava/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableList$Builder;-><init>()V

    return-object v0
.end method

.method private static copyFromCollection(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, elements:[Ljava/lang/Object;
    array-length v2, v0

    packed-switch v2, :pswitch_data_0

    .line 309
    new-instance v1, Lcom/lewa/guava/collect/RegularImmutableList;

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v1

    .line 303
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 306
    :pswitch_1
    new-instance v1, Lcom/lewa/guava/collect/SingletonImmutableList;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/lewa/guava/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    .line 307
    .local v1, list:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .parameter "source"

    .prologue
    .line 372
    array-length v7, p0

    new-array v1, v7, [Ljava/lang/Object;

    .line 373
    .local v1, array:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 374
    .local v4, index:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 375
    .local v2, element:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 376
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 378
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aput-object v2, v1, v5

    .line 374
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 380
    .end local v2           #element:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    instance-of v1, p0, Lcom/lewa/guava/collect/ImmutableList;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 283
    check-cast v0, Lcom/lewa/guava/collect/ImmutableList;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableList;->copyFromCollection(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->copyFromCollection(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableList;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableList;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/SingletonImmutableList;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    .local p9, e10:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    const/16 v2, 0x9

    aput-object p9, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, e7:Ljava/lang/Object;,"TE;"
    .local p7, e8:Ljava/lang/Object;,"TE;"
    .local p8, e9:Ljava/lang/Object;,"TE;"
    .local p9, e10:Ljava/lang/Object;,"TE;"
    .local p10, e11:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    const/16 v2, 0x9

    aput-object p9, v1, v2

    const/16 v2, 0xa

    aput-object p10, v1, v2

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_1
    new-instance v0, Lcom/lewa/guava/collect/SingletonImmutableList;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    .local p2, newElements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lcom/lewa/guava/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    return-object p0
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableList;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;)I
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract subList(II)Lcom/lewa/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableList;->subList(II)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 413
    .local p0, this:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
