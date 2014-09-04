.class public Llewa/laml/util/IndexedStringVariable;
.super Ljava/lang/Object;
.source "IndexedStringVariable.java"


# instance fields
.field private mIndex:I

.field private mVars:Llewa/laml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    .line 13
    invoke-virtual {p3, p1, p2}, Llewa/laml/data/Variables;->registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    .line 14
    iput-object p3, p0, Llewa/laml/util/IndexedStringVariable;->mVars:Llewa/laml/data/Variables;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 1
    .parameter "name"
    .parameter "vars"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Llewa/laml/util/IndexedStringVariable;->mVars:Llewa/laml/data/Variables;

    iget v1, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Llewa/laml/data/Variables;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    return v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Llewa/laml/util/IndexedStringVariable;->mVars:Llewa/laml/data/Variables;

    iget v1, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Llewa/laml/data/Variables;->getStrVer(I)I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 34
    iget-object v0, p0, Llewa/laml/util/IndexedStringVariable;->mVars:Llewa/laml/data/Variables;

    iget v1, p0, Llewa/laml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Llewa/laml/data/Variables;->putStr(ILjava/lang/String;)V

    .line 35
    return-void
.end method
