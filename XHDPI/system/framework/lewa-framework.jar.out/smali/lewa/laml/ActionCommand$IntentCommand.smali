.class Llewa/laml/ActionCommand$IntentCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/ActionCommand$IntentCommand$Extra;,
        Llewa/laml/ActionCommand$IntentCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/ActionCommand$IntentCommand$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mIsBroadcast:Z

.field private mTask:Llewa/laml/util/Task;

.field private mUri:Landroid/net/Uri;

.field private mUriExp:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    .line 312
    invoke-static {p2}, Llewa/laml/util/Task;->load(Lorg/w3c/dom/Element;)Llewa/laml/util/Task;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    .line 313
    const-string v1, "broadcast"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    .line 314
    const-string v1, "uri"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    .line 317
    :cond_0
    const-string v1, "uriExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand;->mUriExp:Llewa/laml/data/Expression;

    .line 318
    invoke-direct {p0, p2}, Llewa/laml/ActionCommand$IntentCommand;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 319
    return-void
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "paramElement"

    .prologue
    .line 370
    const-string v0, "Extra"

    new-instance v1, Llewa/laml/ActionCommand$IntentCommand$1;

    invoke-direct {v1, p0}, Llewa/laml/ActionCommand$IntentCommand$1;-><init>(Llewa/laml/ActionCommand$IntentCommand;)V

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V

    .line 376
    return-void
.end method

.method private putExtras(Landroid/content/Intent;)V
    .locals 6
    .parameter "mIntent"

    .prologue
    .line 382
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 385
    .local v1, localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/laml/ActionCommand$IntentCommand$Extra;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    .end local v1           #localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/laml/ActionCommand$IntentCommand$Extra;>;"
    :cond_0
    return-void

    .line 387
    .restart local v1       #localIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Llewa/laml/ActionCommand$IntentCommand$Extra;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand$IntentCommand$Extra;

    .line 388
    .local v0, localExtra:Llewa/laml/ActionCommand$IntentCommand$Extra;
    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->isConditionTrue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    sget-object v2, Llewa/laml/ActionCommand$1;->$SwitchMap$lewa$laml$ActionCommand$IntentCommand$Type:[I

    iget-object v3, v0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v3}, Llewa/laml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 402
    :pswitch_3
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 405
    :pswitch_4
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Llewa/laml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected addExtra(Llewa/laml/ActionCommand$IntentCommand$Extra;)V
    .locals 1
    .parameter "paramExtra"

    .prologue
    .line 378
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method protected doPerform()V
    .locals 5

    .prologue
    .line 322
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 324
    :try_start_0
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mUriExp:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mUriExp:Llewa/laml/data/Expression;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v3, v4}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 328
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Llewa/laml/ActionCommand$IntentCommand;->putExtras(Landroid/content/Intent;)V

    .line 329
    iget-boolean v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    if-eqz v3, :cond_3

    .line 337
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 347
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llewa/laml/ScreenElementRoot;->findTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    .line 348
    .local v0, configTask:Llewa/laml/util/Task;
    if-eqz v0, :cond_0

    iget-object v2, v0, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iput-object v0, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    .line 350
    :cond_0
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 351
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    :cond_1
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 355
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v3, v3, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :cond_2
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v2, v2, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 357
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v4, v4, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    iget-object v5, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-object v5, v5, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 358
    :cond_3
    const/high16 v1, 0x3400

    .line 359
    .local v1, flag:I
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mTask:Llewa/laml/util/Task;

    iget-boolean v2, v2, Llewa/laml/util/Task;->anim:Z

    if-nez v2, :cond_4

    .line 360
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 361
    :cond_4
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 362
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Llewa/laml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 363
    :cond_5
    iget-boolean v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-nez v2, :cond_6

    .line 364
    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    .end local v1           #flag:I
    :cond_6
    return-void
.end method
