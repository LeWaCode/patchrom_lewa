.class public abstract Lcom/lewa/guava/collect/AbstractIterator;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/AbstractIterator$1;,
        Lcom/lewa/guava/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lcom/lewa/guava/collect/AbstractIterator$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    .line 95
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->NOT_READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 97
    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .prologue
    .line 168
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->FAILED:Lcom/lewa/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 169
    invoke-virtual {p0}, Lcom/lewa/guava/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    sget-object v1, Lcom/lewa/guava/collect/AbstractIterator$State;->DONE:Lcom/lewa/guava/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 171
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->DONE:Lcom/lewa/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    sget-object v3, Lcom/lewa/guava/collect/AbstractIterator$State;->FAILED:Lcom/lewa/guava/collect/AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkState(Z)V

    .line 157
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$1;->$SwitchMap$com$lewa$guava$collect$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/lewa/guava/collect/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 161
    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 181
    :cond_0
    sget-object v0, Lcom/lewa/guava/collect/AbstractIterator$State;->NOT_READY:Lcom/lewa/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->state:Lcom/lewa/guava/collect/AbstractIterator$State;

    .line 182
    iget-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, this:Lcom/lewa/guava/collect/AbstractIterator;,"Lcom/lewa/guava/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method
