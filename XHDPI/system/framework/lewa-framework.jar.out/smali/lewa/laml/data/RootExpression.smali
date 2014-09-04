.class public Llewa/laml/data/RootExpression;
.super Llewa/laml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/RootExpression$VarVersionVisitor;,
        Llewa/laml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Llewa/laml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Llewa/laml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Llewa/laml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Llewa/laml/data/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 28
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 29
    iput-object p1, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    .line 30
    return-void
.end method

.method static synthetic access$002(Llewa/laml/data/RootExpression;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-boolean p1, p0, Llewa/laml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 1
    .parameter "visitor"

    .prologue
    .line 33
    iget-object v0, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 34
    return-void
.end method

.method public addVarVersion(Llewa/laml/data/RootExpression$VarVersion;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 37
    iget-object v0, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 10
    .parameter "var"

    .prologue
    const/4 v9, 0x1

    .line 41
    iget-boolean v7, p0, Llewa/laml/data/RootExpression;->mIsNumInit:Z

    if-nez v7, :cond_2

    .line 42
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v7, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v7

    iput-wide v7, p0, Llewa/laml/data/RootExpression;->mDoubleValue:D

    .line 43
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    if-nez v7, :cond_0

    .line 44
    new-instance v7, Llewa/laml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v7, p0, p1}, Llewa/laml/data/RootExpression$VarVersionVisitor;-><init>(Llewa/laml/data/RootExpression;Llewa/laml/data/Variables;)V

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    .line 45
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    iget-object v8, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v7, v8}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 46
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 47
    .local v5, size:I
    if-lez v5, :cond_0

    .line 48
    new-array v7, v5, [Llewa/laml/data/RootExpression$VarVersion;

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    .line 49
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v8, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .end local v5           #size:I
    :cond_0
    iput-boolean v9, p0, Llewa/laml/data/RootExpression;->mIsNumInit:Z

    .line 70
    :cond_1
    :goto_0
    iget-wide v7, p0, Llewa/laml/data/RootExpression;->mDoubleValue:D

    return-wide v7

    .line 54
    :cond_2
    const/4 v2, 0x0

    .line 55
    .local v2, isChange:Z
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    if-eqz v7, :cond_5

    .line 56
    iget-object v0, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    .local v0, arr$:[Llewa/laml/data/RootExpression$VarVersion;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v6, v0, v1

    .line 57
    .local v6, version:Llewa/laml/data/RootExpression$VarVersion;
    if-eqz v6, :cond_3

    .line 58
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    if-ne v7, v9, :cond_4

    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v7}, Llewa/laml/data/Variables;->getNumVer(I)I

    move-result v4

    .line 60
    .local v4, newVersion:I
    :goto_2
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v7, v4, :cond_3

    .line 61
    const/4 v2, 0x1

    .line 62
    iput v4, v6, Llewa/laml/data/RootExpression$VarVersion;->mVersion:I

    .line 56
    .end local v4           #newVersion:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_4
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v7}, Llewa/laml/data/Variables;->getStrVer(I)I

    move-result v4

    goto :goto_2

    .line 67
    .end local v0           #arr$:[Llewa/laml/data/RootExpression$VarVersion;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v6           #version:Llewa/laml/data/RootExpression$VarVersion;
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v7, p0, Llewa/laml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v7, :cond_1

    .line 68
    :cond_6
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v7, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v7

    iput-wide v7, p0, Llewa/laml/data/RootExpression;->mDoubleValue:D

    goto :goto_0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 10
    .parameter "var"

    .prologue
    const/4 v9, 0x1

    .line 74
    iget-boolean v7, p0, Llewa/laml/data/RootExpression;->mIsStrInit:Z

    if-nez v7, :cond_2

    .line 75
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v7, p1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 76
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    if-nez v7, :cond_0

    .line 77
    new-instance v7, Llewa/laml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v7, p0, p1}, Llewa/laml/data/RootExpression$VarVersionVisitor;-><init>(Llewa/laml/data/RootExpression;Llewa/laml/data/Variables;)V

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    .line 78
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    iget-object v8, p0, Llewa/laml/data/RootExpression;->mVarVersionVisitor:Llewa/laml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v7, v8}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 79
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 80
    .local v5, size:I
    if-lez v5, :cond_0

    .line 81
    new-array v7, v5, [Llewa/laml/data/RootExpression$VarVersion;

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    .line 82
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v8, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .end local v5           #size:I
    :cond_0
    iput-boolean v9, p0, Llewa/laml/data/RootExpression;->mIsStrInit:Z

    .line 103
    :cond_1
    :goto_0
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v7

    .line 87
    :cond_2
    const/4 v2, 0x0

    .line 88
    .local v2, isChange:Z
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    if-eqz v7, :cond_5

    .line 89
    iget-object v0, p0, Llewa/laml/data/RootExpression;->mVersions:[Llewa/laml/data/RootExpression$VarVersion;

    .local v0, arr$:[Llewa/laml/data/RootExpression$VarVersion;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v6, v0, v1

    .line 90
    .local v6, version:Llewa/laml/data/RootExpression$VarVersion;
    if-eqz v6, :cond_3

    .line 91
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mType:I

    if-ne v7, v9, :cond_4

    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v7}, Llewa/laml/data/Variables;->getNumVer(I)I

    move-result v4

    .line 93
    .local v4, newVersion:I
    :goto_2
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v7, v4, :cond_3

    .line 94
    const/4 v2, 0x1

    .line 95
    iput v4, v6, Llewa/laml/data/RootExpression$VarVersion;->mVersion:I

    .line 89
    .end local v4           #newVersion:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_4
    iget v7, v6, Llewa/laml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v7}, Llewa/laml/data/Variables;->getStrVer(I)I

    move-result v4

    goto :goto_2

    .line 100
    .end local v0           #arr$:[Llewa/laml/data/RootExpression$VarVersion;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v6           #version:Llewa/laml/data/RootExpression$VarVersion;
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v7, p0, Llewa/laml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v7, :cond_1

    .line 101
    :cond_6
    iget-object v7, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v7, p1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Llewa/laml/data/RootExpression;->mStringValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 107
    iget-object v0, p0, Llewa/laml/data/RootExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v0

    return v0
.end method
