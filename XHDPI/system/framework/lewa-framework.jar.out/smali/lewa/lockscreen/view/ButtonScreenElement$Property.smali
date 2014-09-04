.class abstract Llewa/lockscreen/view/ButtonScreenElement$Property;
.super Ljava/lang/Object;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Property"
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/String;

.field protected mTargetElement:Llewa/lockscreen/view/ScreenElement;

.field final synthetic this$0:Llewa/lockscreen/view/ButtonScreenElement;


# direct methods
.method protected constructor <init>(Llewa/lockscreen/view/ButtonScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 183
    iput-object p1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->this$0:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method protected getTarget()Llewa/lockscreen/view/ScreenElement;
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTargetElement:Llewa/lockscreen/view/ScreenElement;

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->this$0:Llewa/lockscreen/view/ButtonScreenElement;

    iget-object v1, v1, Llewa/lockscreen/view/ButtonScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v1, Llewa/lockscreen/view/ScreenContext;->mRoot:Llewa/lockscreen/view/ScreenElement;

    .line 193
    .local v0, screenelement:Llewa/lockscreen/view/ScreenElement;
    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llewa/lockscreen/view/ScreenElement;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v1

    iput-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTargetElement:Llewa/lockscreen/view/ScreenElement;

    .line 195
    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTargetElement:Llewa/lockscreen/view/ScreenElement;

    if-nez v1, :cond_0

    .line 196
    const-string v1, "ButtonScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find trigger target, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    .line 200
    .end local v0           #screenelement:Llewa/lockscreen/view/ScreenElement;
    :cond_0
    iget-object v1, p0, Llewa/lockscreen/view/ButtonScreenElement$Property;->mTargetElement:Llewa/lockscreen/view/ScreenElement;

    return-object v1
.end method

.method public abstract perform()V
.end method
