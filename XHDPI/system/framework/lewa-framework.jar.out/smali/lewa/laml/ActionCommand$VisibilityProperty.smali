.class Llewa/laml/ActionCommand$VisibilityProperty;
.super Llewa/laml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityProperty"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method protected constructor <init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1019
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/ActionCommand$PropertyCommand;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/util/Variable;Ljava/lang/String;)V

    .line 1020
    const-string v0, "toggle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iput-boolean v1, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    iput-boolean v1, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    .line 1024
    :cond_2
    const-string v0, "false"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .prologue
    .line 1011
    iget-boolean v0, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    if-eqz v0, :cond_1

    .line 1012
    iget-object v1, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mTargetElement:Llewa/laml/elements/ScreenElement;

    iget-object v0, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mTargetElement:Llewa/laml/elements/ScreenElement;

    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Llewa/laml/elements/ScreenElement;->show(Z)V

    .line 1016
    :goto_1
    return-void

    .line 1012
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mTargetElement:Llewa/laml/elements/ScreenElement;

    iget-boolean v1, p0, Llewa/laml/ActionCommand$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, v1}, Llewa/laml/elements/ScreenElement;->show(Z)V

    goto :goto_1
.end method
