.class Llewa/laml/util/TextFormatter$ExpressioPara;
.super Llewa/laml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Llewa/laml/data/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/laml/util/TextFormatter$FormatPara;-><init>(Llewa/laml/util/TextFormatter$1;)V

    .line 147
    iput-object p1, p0, Llewa/laml/util/TextFormatter$ExpressioPara;->mExp:Llewa/laml/data/Expression;

    .line 148
    return-void
.end method


# virtual methods
.method public evaluate(Llewa/laml/data/Variables;)Ljava/lang/Object;
    .locals 2
    .parameter "var"

    .prologue
    .line 143
    iget-object v0, p0, Llewa/laml/util/TextFormatter$ExpressioPara;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
