.class Llewa/laml/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeToggleHelper"
.end annotation


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/ActionCommand$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 479
    invoke-direct {p0}, Llewa/laml/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 496
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 497
    iget-object v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    .end local v1           #i:I
    :goto_1
    return v1

    .line 496
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "mode"
    .parameter "id"

    .prologue
    .line 503
    iget-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public build(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 508
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v3

    .line 509
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 510
    iput v3, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 526
    :goto_0
    return v5

    .line 513
    :cond_0
    const-string v6, "toggle"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 514
    iput-boolean v5, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    goto :goto_0

    .line 517
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, modes:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, v4

    .local v0, N:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 519
    aget-object v6, v4, v1

    invoke-direct {p0, v6}, Llewa/laml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v2

    .line 520
    .local v2, ind:I
    if-gez v2, :cond_2

    .line 521
    const/4 v5, 0x0

    goto :goto_0

    .line 522
    :cond_2
    iget-object v6, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    .end local v2           #ind:I
    :cond_3
    iput-boolean v5, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggle:Z

    goto :goto_0
.end method

.method public click()V
    .locals 4

    .prologue
    .line 530
    iget-boolean v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggle:Z

    if-eqz v2, :cond_1

    .line 531
    iget v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    add-int/lit8 v1, v2, 0x1

    .line 532
    .local v1, j:I
    iput v1, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 533
    iget-object v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v1, v2

    iput v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 534
    iget-object v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    iget v3, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 540
    .end local v1           #j:I
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-boolean v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    if-eqz v2, :cond_0

    .line 536
    iget v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    add-int/lit8 v0, v2, 0x1

    .line 537
    .local v0, i:I
    iput v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 538
    iget-object v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    goto :goto_0
.end method

.method public getModeId()I
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    iget v1, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    iget v1, p0, Llewa/laml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
