.class Lcom/lewa/guava/collect/RegularImmutableList$1;
.super Ljava/lang/Object;
.source "RegularImmutableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/lewa/guava/collect/RegularImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/RegularImmutableList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->this$0:Lcom/lewa/guava/collect/RegularImmutableList;

    iput p2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->val$start:I

    iput v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 164
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    iget-object v1, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->this$0:Lcom/lewa/guava/collect/RegularImmutableList;

    #getter for: Lcom/lewa/guava/collect/RegularImmutableList;->size:I
    invoke-static {v1}, Lcom/lewa/guava/collect/RegularImmutableList;->access$000(Lcom/lewa/guava/collect/RegularImmutableList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 167
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    :try_start_0
    iget-object v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->this$0:Lcom/lewa/guava/collect/RegularImmutableList;

    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    invoke-virtual {v2, v3}, Lcom/lewa/guava/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    .line 185
    return-object v0

    .line 181
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :catch_0
    move-exception v1

    .line 182
    .local v1, rethrown:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 171
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    :try_start_0
    iget-object v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->this$0:Lcom/lewa/guava/collect/RegularImmutableList;

    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lewa/guava/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    .line 195
    return-object v0

    .line 191
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :catch_0
    move-exception v1

    .line 192
    .local v1, rethrown:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 174
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 205
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList$1;,"Lcom/lewa/guava/collect/RegularImmutableList.1;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
