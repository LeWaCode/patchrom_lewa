.class Lcom/lewa/guava/collect/Collections2$FilteredCollection;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lcom/lewa/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/lewa/guava/base/Predicate;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, unfiltered:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p2, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 165
    iput-object p2, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    .line 166
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 176
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, element:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v2, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    goto :goto_0

    .line 183
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_0
    iget-object v2, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 187
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z

    .line 188
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "element"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    const/4 v2, 0x0

    .line 195
    move-object v1, p1

    .line 196
    .local v1, e:Ljava/lang/Object;,"TE;"
    :try_start_0
    iget-object v3, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v3, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const/4 v2, 0x0

    .line 210
    .end local v0           #element:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method createCombined(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/Collections2$FilteredCollection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;)",
            "Lcom/lewa/guava/collect/Collections2$FilteredCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, newPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v2, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v2, p1}, Lcom/lewa/guava/base/Predicates;->and(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/lewa/guava/base/Predicate;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 214
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->any(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "element"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    const/4 v2, 0x0

    .line 226
    move-object v1, p1

    .line 227
    .local v1, e:Ljava/lang/Object;,"TE;"
    :try_start_0
    iget-object v3, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v3, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 231
    :cond_0
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$1;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Collections2$FilteredCollection$1;-><init>(Lcom/lewa/guava/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V

    .line 242
    .local v0, combinedPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/lewa/guava/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z

    move-result v1

    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;-><init>(Lcom/lewa/guava/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V

    .line 252
    .local v0, combinedPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/lewa/guava/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 256
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
