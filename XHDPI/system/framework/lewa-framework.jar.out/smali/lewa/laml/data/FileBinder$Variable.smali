.class Llewa/laml/data/FileBinder$Variable;
.super Ljava/lang/Object;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/FileBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field public mIndex:Llewa/laml/data/Expression;

.field public mName:Ljava/lang/String;

.field public mVar:Llewa/laml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V
    .locals 2
    .parameter "node"
    .parameter "var"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/FileBinder$Variable;->mName:Ljava/lang/String;

    .line 118
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/data/FileBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/FileBinder$Variable;->mVar:Llewa/laml/util/IndexedStringVariable;

    .line 119
    const-string v0, "index"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/FileBinder$Variable;->mIndex:Llewa/laml/data/Expression;

    .line 120
    iget-object v0, p0, Llewa/laml/data/FileBinder$Variable;->mIndex:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "Variable"

    const-string v1, "fail to load file index expression"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method
