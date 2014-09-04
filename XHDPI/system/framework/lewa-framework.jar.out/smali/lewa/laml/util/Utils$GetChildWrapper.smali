.class public Llewa/laml/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "ele"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Llewa/laml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 24
    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Llewa/laml/util/Utils$GetChildWrapper;
    .locals 2
    .parameter "name"

    .prologue
    .line 15
    new-instance v0, Llewa/laml/util/Utils$GetChildWrapper;

    iget-object v1, p0, Llewa/laml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    invoke-static {v1, p1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Llewa/laml/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Llewa/laml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-object v0
.end method
