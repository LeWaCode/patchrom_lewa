.class public Llewa/laml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Llewa/laml/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Llewa/laml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    .line 434
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILlewa/laml/data/Variables;)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "column"
    .parameter "row"
    .parameter "var"

    .prologue
    .line 385
    new-instance v0, Llewa/laml/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Llewa/laml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 386
    .local v0, v:Llewa/laml/data/ContentProviderBinder$Variable;
    iput-object p3, v0, Llewa/laml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 387
    iput p4, v0, Llewa/laml/data/ContentProviderBinder$Variable;->mRow:I

    .line 388
    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Llewa/laml/data/ContentProviderBinder;->addVariable(Llewa/laml/data/ContentProviderBinder$Variable;)V

    .line 389
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "args"

    .prologue
    .line 392
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "columns"

    .prologue
    .line 397
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "countName"

    .prologue
    .line 402
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    invoke-virtual {v0}, Llewa/laml/data/ContentProviderBinder;->createCountVar()V

    .line 404
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 408
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public setNotifyUri(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uri"

    .prologue
    .line 428
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mNotifyUri:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "order"

    .prologue
    .line 413
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 414
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "where"

    .prologue
    .line 418
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    new-instance v1, Llewa/laml/util/TextFormatter;

    invoke-direct {v1, p1}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Llewa/laml/data/ContentProviderBinder;->mWhereFormatter:Llewa/laml/util/TextFormatter;

    .line 419
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "whereFormat"
    .parameter "whereParas"

    .prologue
    .line 423
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Builder;->mBinder:Llewa/laml/data/ContentProviderBinder;

    new-instance v1, Llewa/laml/util/TextFormatter;

    invoke-direct {v1, p1, p2}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Llewa/laml/data/ContentProviderBinder;->mWhereFormatter:Llewa/laml/util/TextFormatter;

    .line 424
    return-object p0
.end method
