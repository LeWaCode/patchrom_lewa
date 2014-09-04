.class public Llewa/laml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# static fields
.field public static final TYPE_NUM:I = 0x1

.field public static final TYPE_STR:I = 0x2


# instance fields
.field mIndex:I

.field mType:I

.field mVersion:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "index"
    .parameter "version"
    .parameter "type"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    .line 137
    iput p2, p0, Llewa/laml/data/RootExpression$VarVersion;->mVersion:I

    .line 138
    iput p3, p0, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    .line 139
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "version"

    .prologue
    .line 122
    instance-of v1, p1, Llewa/laml/data/RootExpression$VarVersion;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Llewa/laml/data/RootExpression$VarVersion;

    .line 124
    .local v0, tempVersion:Llewa/laml/data/RootExpression$VarVersion;
    iget v1, v0, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    iget v2, p0, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    iget v2, p0, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    if-ne v1, v2, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 128
    .end local v0           #tempVersion:Llewa/laml/data/RootExpression$VarVersion;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    rsub-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
