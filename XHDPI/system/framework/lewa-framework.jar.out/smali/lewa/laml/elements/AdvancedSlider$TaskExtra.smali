.class public final Llewa/laml/elements/AdvancedSlider$TaskExtra;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskExtra"
.end annotation


# instance fields
.field public condition:Llewa/laml/data/Expression;

.field public task:Llewa/laml/util/Task;

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/util/Task;Llewa/laml/data/Expression;)V
    .locals 0
    .parameter
    .parameter "task"
    .parameter "condition"

    .prologue
    .line 1259
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-object p2, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->task:Llewa/laml/util/Task;

    .line 1261
    iput-object p3, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->condition:Llewa/laml/data/Expression;

    .line 1262
    return-void
.end method


# virtual methods
.method public isConditionTrue()Z
    .locals 4

    .prologue
    .line 1265
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->condition:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->condition:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v1}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
