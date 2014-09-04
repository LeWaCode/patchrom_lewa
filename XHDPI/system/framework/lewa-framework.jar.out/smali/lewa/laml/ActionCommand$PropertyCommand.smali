.class public abstract Llewa/laml/ActionCommand$PropertyCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation


# instance fields
.field protected mTargetElement:Llewa/laml/elements/ScreenElement;

.field private mTargetObj:Llewa/laml/util/Variable;


# direct methods
.method protected constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V
    .locals 0
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 650
    iput-object p2, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetObj:Llewa/laml/util/Variable;

    .line 651
    return-void
.end method

.method public static create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/ActionCommand$PropertyCommand;
    .locals 3
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    .line 624
    new-instance v0, Llewa/laml/util/Variable;

    invoke-direct {v0, p1}, Llewa/laml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, t:Llewa/laml/util/Variable;
    const-string v1, "visibility"

    invoke-virtual {v0}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    new-instance v1, Llewa/laml/ActionCommand$VisibilityProperty;

    invoke-direct {v1, p0, v0, p2}, Llewa/laml/ActionCommand$VisibilityProperty;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V

    .line 630
    :goto_0
    return-object v1

    .line 627
    :cond_0
    const-string v1, "animation"

    invoke-virtual {v0}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    new-instance v1, Llewa/laml/ActionCommand$AnimationProperty;

    invoke-direct {v1, p0, v0, p2}, Llewa/laml/ActionCommand$AnimationProperty;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public perform()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetObj:Llewa/laml/util/Variable;

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetElement:Llewa/laml/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v1, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetObj:Llewa/laml/util/Variable;

    invoke-virtual {v1}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetElement:Llewa/laml/elements/ScreenElement;

    .line 638
    iget-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetElement:Llewa/laml/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 639
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find PropertyCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetObj:Llewa/laml/util/Variable;

    invoke-virtual {v2}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/ActionCommand$PropertyCommand;->mTargetObj:Llewa/laml/util/Variable;

    .line 645
    :cond_1
    invoke-virtual {p0}, Llewa/laml/ActionCommand$PropertyCommand;->doPerform()V

    goto :goto_0
.end method
