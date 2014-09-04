.class public Llewa/laml/data/WebServiceBinder$Variable;
.super Llewa/laml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field public mPersist:Z

.field public mXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Llewa/laml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 273
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/WebServiceBinder$Variable;->mXPath:Ljava/lang/String;

    .line 274
    const-string v0, "persist"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/data/WebServiceBinder$Variable;->mPersist:Z

    .line 275
    return-void
.end method
