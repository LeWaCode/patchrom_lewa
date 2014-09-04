.class Lnet/sourceforge/jeval/NextOperator;
.super Ljava/lang/Object;
.source "NextOperator.java"


# instance fields
.field private index:I

.field private operator:Lnet/sourceforge/jeval/operator/Operator;


# direct methods
.method public constructor <init>(Lnet/sourceforge/jeval/operator/Operator;I)V
    .locals 1
    .parameter "operator"
    .parameter "index"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jeval/NextOperator;->operator:Lnet/sourceforge/jeval/operator/Operator;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/jeval/NextOperator;->index:I

    .line 41
    iput-object p1, p0, Lnet/sourceforge/jeval/NextOperator;->operator:Lnet/sourceforge/jeval/operator/Operator;

    .line 42
    iput p2, p0, Lnet/sourceforge/jeval/NextOperator;->index:I

    .line 43
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnet/sourceforge/jeval/NextOperator;->index:I

    return v0
.end method

.method public getOperator()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/sourceforge/jeval/NextOperator;->operator:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method
