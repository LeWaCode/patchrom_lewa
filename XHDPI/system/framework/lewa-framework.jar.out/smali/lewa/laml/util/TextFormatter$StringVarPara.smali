.class Llewa/laml/util/TextFormatter$StringVarPara;
.super Llewa/laml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Llewa/laml/util/IndexedStringVariable;

.field private mVariable:Llewa/laml/util/Variable;


# direct methods
.method public constructor <init>(Llewa/laml/util/Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/laml/util/TextFormatter$FormatPara;-><init>(Llewa/laml/util/TextFormatter$1;)V

    .line 217
    iput-object p1, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVariable:Llewa/laml/util/Variable;

    .line 218
    return-void
.end method


# virtual methods
.method public evaluate(Llewa/laml/data/Variables;)Ljava/lang/Object;
    .locals 4
    .parameter "var"

    .prologue
    .line 207
    iget-object v1, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVar:Llewa/laml/util/IndexedStringVariable;

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Llewa/laml/util/IndexedStringVariable;

    iget-object v2, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVariable:Llewa/laml/util/Variable;

    invoke-virtual {v2}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVariable:Llewa/laml/util/Variable;

    invoke-virtual {v3}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v1, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVar:Llewa/laml/util/IndexedStringVariable;

    .line 210
    :cond_0
    iget-object v1, p0, Llewa/laml/util/TextFormatter$StringVarPara;->mVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v1}, Llewa/laml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 212
    const-string v0, ""

    .line 213
    :cond_1
    return-object v0
.end method
