.class Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoPlusArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final rest:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;[TE;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;,"Lcom/lewa/guava/collect/Lists$TwoPlusArrayList<TE;>;"
    .local p1, first:Ljava/lang/Object;,"TE;"
    .local p2, second:Ljava/lang/Object;,"TE;"
    .local p3, rest:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    .line 321
    iput-object p2, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    .line 322
    invoke-static {p3}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    .line 323
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, this:Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;,"Lcom/lewa/guava/collect/Lists$TwoPlusArrayList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 335
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 336
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 325
    .local p0, this:Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;,"Lcom/lewa/guava/collect/Lists$TwoPlusArrayList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
