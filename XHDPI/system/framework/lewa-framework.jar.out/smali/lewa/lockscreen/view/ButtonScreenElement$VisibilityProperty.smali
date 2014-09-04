.class Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;
.super Llewa/lockscreen/view/ButtonScreenElement$Property;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityProperty"
.end annotation


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z

.field final synthetic this$0:Llewa/lockscreen/view/ButtonScreenElement;


# direct methods
.method protected constructor <init>(Llewa/lockscreen/view/ButtonScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 143
    iput-object p1, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->this$0:Llewa/lockscreen/view/ButtonScreenElement;

    .line 144
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ButtonScreenElement$Property;-><init>(Llewa/lockscreen/view/ButtonScreenElement;Ljava/lang/String;)V

    .line 146
    const-string v0, "toggle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v1, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->mIsToggle:Z

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iput-boolean v1, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    goto :goto_0
.end method


# virtual methods
.method public perform()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->getTarget()Llewa/lockscreen/view/ScreenElement;

    move-result-object v1

    .line 158
    .local v1, screenelement:Llewa/lockscreen/view/ScreenElement;
    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-boolean v2, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->mIsToggle:Z

    if-eqz v2, :cond_2

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, isShow:Z
    invoke-virtual {v1}, Llewa/lockscreen/view/ScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const-string v2, "music_control"

    const-string v3, "visibility"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    .line 171
    :goto_1
    invoke-virtual {v1, v0}, Llewa/lockscreen/view/ScreenElement;->show(Z)V

    goto :goto_0

    .line 168
    :cond_1
    const-string v2, "music_control"

    const-string v3, "visibility"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    goto :goto_1

    .line 173
    .end local v0           #isShow:Z
    :cond_2
    iget-boolean v2, p0, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v1, v2}, Llewa/lockscreen/view/ScreenElement;->show(Z)V

    goto :goto_0
.end method
