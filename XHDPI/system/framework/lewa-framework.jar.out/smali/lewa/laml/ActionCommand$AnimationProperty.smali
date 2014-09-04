.class Llewa/laml/ActionCommand$AnimationProperty;
.super Llewa/laml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mIsPlay:Z


# direct methods
.method protected constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/ActionCommand$PropertyCommand;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V

    .line 147
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/ActionCommand$AnimationProperty;->mIsPlay:Z

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Llewa/laml/ActionCommand$AnimationProperty;->mIsPlay:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Llewa/laml/ActionCommand$AnimationProperty;->mTargetElement:Llewa/laml/elements/ScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->reset()V

    .line 143
    :cond_0
    return-void
.end method
